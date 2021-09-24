import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Tac-Alert"),
        ),

      body: Center(
        child: Column(
          children: [
            Container(
              child: decorationBox()
            ),
            Container(
              child: Row(
                children:[
                  Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        intRadiationNumbers(1000),
                        SizedBox(height: 75),
                        intRadiationNumbers(100),
                        SizedBox(height: 75),
                        intRadiationNumbers(5),
                        SizedBox(height: 75),
                        doubleRadiationNumbers(0.05),
                        SizedBox(height: 75),
                        intRadiationNumbers(0),
                      ]
                  ),
                  Align(
                      alignment: Alignment(0, 0),
                      child: radiationLevelBar()
                  )
                ]
              )
            ),
          ],
        )
      ),

    );
  }


  Widget decorationBox()
  {
    return Column(

      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("Dose Rate"),

              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                child: Text("10mRad/hr"),

              ),
            ],
          ),
           width: 300,
          height: 100,
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(

            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: const Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow

            ],

          ),

        ),

      ],
    );
  }
  Widget radiationLevelBar()
  {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Colors.red[900]!,
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green
            ],
          ),
          borderRadius:BorderRadius.all(Radius.circular(10.0)),
        )
      ),
      height:400,
      width:50,
      //color: Colors.deepPurpleAccent
    );
  }
  Widget intRadiationNumbers(int radiationLevel)
  {
    return Container(
        decoration: BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(10.0)),
            color: Colors.blue
        ),
        width:35,
        height:20,
        child: Center(
          child:Text(
            "$radiationLevel",
            style: TextStyle(color: Colors.white),
          )
        )
    );
  }
  Widget doubleRadiationNumbers(double radiationLevel)
  {
    return Container(
        decoration: BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(10.0)),
            color: Colors.blue
        ),

        width:35,
        height:20,
        child: Center(
            child:Text(
              "$radiationLevel",
              style: TextStyle(color: Colors.white),
            )
        )
    );
  }

}