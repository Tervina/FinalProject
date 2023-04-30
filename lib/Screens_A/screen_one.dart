import 'package:flutter/material.dart';
//import 'package:image/image.dart';



class K_ost extends StatefulWidget {
  const K_ost({Key? key}) : super(key: key);

  @override
  State<K_ost> createState() => _K_ostState();
}

class _K_ostState extends State<K_ost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        flex: 2,
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
                  Color(0xFFfba867),
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
                  child: Expanded(
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 110,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/image.png',
                  ),
                  radius: 100,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  // width: 1200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          ("what"),
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " is Knee",
                              style: TextStyle(fontSize: 40),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Osteoarthritis?",
                              style: TextStyle(
                                  color: Color(0xFF00174d),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Osteoarthritis of the knee happens when cartilage in your knee joint breaks down. when this happens, the bones in your knee joint rub together, causing friction that makes your knees hurt, become stiff or swell. Osteoarthritis in the knee can't be cured but there are treatments that can relieve symptoms and slow your condition 's progress.",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 80,
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
            ],
          ),
        ),
      ),
    );
  }
}
