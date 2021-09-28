import 'package:flutter/material.dart';
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @overridea
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Tac-Alert"),
        ),
      body: ListView(
        children: [
          Center(
              child: Column(
              children: [
                Container(
                  child: decorationBox()
                ),
                Container(
                  child: Row(
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            intRadiationNumbers(1000),
                            SizedBox(height: 80),
                            intRadiationNumbers(100),
                            SizedBox(height: 90),
                            intRadiationNumbers(5),
                            SizedBox(height: 90),
                            doubleRadiationNumbers(0.05),
                            SizedBox(height: 80),
                            intRadiationNumbers(0),
                          ]
                      ),
                      Align(
                          alignment: Alignment(0, 0),
                          child: radiationLevelBar()
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      //first box
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Very High',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ,letterSpacing: 2,
                                      ),),
                                    SizedBox(
                                      width: 50.0,
                                    ),
                                    Text('INSTRUMENT OVER RANGE \nMOVE BACK IMMEDIATELY',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(40.0)),
                                  color:     Colors.red,
                                ),
                                height: 35.0,
                                width: 295.0,
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              // Second box
                              Container(
                                child: Row(

                                  children: [
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('High',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(
                                      width: 90.0,
                                    ),
                                    Text('Limit Stay Times to less than\n 5 Hours',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),),

                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(40.0)),
                                  color:     Colors.red,
                                ),
                                height: 30.0,
                                width: 295.0,
                              ),

                              SizedBox(
                                height: 80,
                              ),
                              // Third box

                              Container(
                                child: Row(

                                  children: [
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('Medium',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(
                                      width: 70.0,
                                    ),
                                    Text('Turn Back Limit exceeded,\n REPORT IMMEDIATELY',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.all(Radius.circular(40.0)),
                                  color:     Colors.orange,
                                ),
                                height: 30.0,
                                width: 295.0,
                              ),

                              SizedBox(
                                height: 170,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('Background',

                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text('No Health Concern',

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:BorderRadius.all(Radius.circular(40.0)),
                                    color:     Colors.green
                                ),
                                height: 30.0,
                                width: 295.0,
                              )
                            ],
                          )
                      ),
                    ]
                  )

                ),

              ],
            )
          ),
        ],
      ),

    );
  }


  Widget decorationBox()
  {
    return Column(

      children: [
        Container(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    child: Text("Dose Rate",
                      style: TextStyle(
                          fontSize: 20.0
                          ,color: Colors.white
                      ),
                    ),
                  ),

                ],
              ),
              Spacer(),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    child: Text(".002",
                      style: TextStyle(
                          fontSize: 40
                          ,color: Colors.white
                      ),
                    ),
                  ),
                  Text("mRad/hr",
                    style: TextStyle(
                        fontSize: 20.0
                        ,color: Colors.white
                    ),
                  ),
                ],
              ),
            ],
          ),

           width: 500,
          height: 100,
          margin: const EdgeInsets.all(12.0),
          decoration: new BoxDecoration(

            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
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

              Colors.grey,
              Colors.grey,
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green
            ],
          ),
          borderRadius:BorderRadius.all(Radius.circular(40.0)),
        )
      ),
      height:480,
      width:40,
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