import 'package:flutter/material.dart';
class diagnosticsPage extends StatefulWidget{
  @override
  _diagnosticsPageState createState() => _diagnosticsPageState();
}

class _diagnosticsPageState extends State<diagnosticsPage> {
  //const diagnosticsPage({Key? key}) : super(key: key);
  bool isDoseSwitched = false;
  bool isBatterySwitched = false;
  TextEditingController doseController = TextEditingController();
  TextEditingController batteryController = TextEditingController();
  String dosePlaceHolder = "";
  String batteryPlaceHolder = "";

  void _toggleDoseSwitch(bool value)
  {
    setState(()
    {
      isDoseSwitched = !isDoseSwitched;
    });
  }

  void _toggleBatterySwitch(bool value)
  {
    setState(()
    {
      isBatterySwitched = !isBatterySwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tac-Alert"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Diagnostics",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

            ]
          ),
          doseLine(),
          batteryLine(),
        ],
      ),


    );
  }

  Widget doseLine()
  {
    return Padding(
      padding: const EdgeInsets.all(8),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Text("Dose Count (0.5s):   "),

          Container(
            width: 150,
            child: TextField(
              controller: doseController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Count',
              ),
              onChanged: (doseText) {
                setState(() {
                  dosePlaceHolder = doseText;
                });
              },
            ),
          ),

          Switch(
            value: isDoseSwitched,
            onChanged: _toggleDoseSwitch,
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
        ],
      ),
    );

  }


  Widget batteryLine()
  {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Batter Count (ADC): "),

          Container(
            width: 150,
            child: TextField(
              controller: batteryController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Count',
              ),
              onChanged: (batteryText) {
                setState(() {
                  batteryPlaceHolder = batteryText;
                });
              },
            ),
          ),

          Switch(
            value: isBatterySwitched,
            onChanged: _toggleBatterySwitch,
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
