import 'package:flutter/material.dart';
import 'package:tac_app/bluetooth.dart';
import 'package:tac_app/diagnosticsPage.dart';
import 'bluetooth.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<settingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //set settings as title of page
          title: Text("Settings"),
            centerTitle: true,
      ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(right: 250),
              child: TextButton(
                child: Text('Bluetooth'),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bluetoothPage()));
                  }
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(right: 238),
              child: TextButton(
                child: Text('Diagnostics'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => diagnosticsPage()));
                  }
          ),
        ),
      ]),
    ),
    );
  }
}

