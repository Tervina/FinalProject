import 'package:flutter/material.dart';

class ChooseDoc extends StatelessWidget {
  const ChooseDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              // height: 1000,
              //width: 2000,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment(0, 0),
                    colors: [
                      Color(0xFFfba867),
                      //Color(0xFFff8a65),
                      Color(0xFFc5cae9),
                      // Color(0xFFfba867),
                      Color(0xFF7986cb),
                      Color(0xFFc5cae9),
                    ]),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 140,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/check.png',
                      ),
                      radius: 130,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 480,
                // width: 1200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /* Text(
                          ("Choose"),
                          style: TextStyle(fontSize: 60),
                        ),
                        SizedBox(
                          height: 10,
                        ),*/

                      Text(
                        ("Choose"),
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "Best Doctors",
                        style: TextStyle(
                            color: Color(0xFF00174d),
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "this application has many doctors from all over the world .....if you want to follow them you can choose anyone to check your knee health by his rate and portfolio .",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF00174d),
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
