import 'package:flutter/material.dart';
bool checkBoxValue=false;
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override

  State<SignUp> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUp> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/knee_bg_wide.jpg'))),
            ),
          ),
          Container(
            height: 180,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70)),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(height: 20,),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    Text(
                      "Back",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                )
              ],
            ),
          ),
          Positioned(
            //top: 350,
            bottom: 0,
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Container(
              // height: MediaQuery.of(context).size.height*0.6,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create new Account",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      TextButton(onPressed: (){},
                          child: Text("Already Registered? Login here")
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "NAME",
                          style: TextStyle(fontSize: 10,),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                      CustomField(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "EMAIL",
                          style: TextStyle(fontSize: 10,),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                      CustomField(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PASSWORD",
                          style: TextStyle(fontSize: 10),
                        ),

                      ),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffD9D8D8),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "YOUR COUNTRY",
                          style: TextStyle(fontSize: 10,),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                      CustomField(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "YOUR AGE",
                          style: TextStyle(fontSize: 10,),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                      CustomField(),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 20,
                            width:MediaQuery.of(context).size.width*0.35,
                            child: CheckboxListTile(

                                value: checkBoxValue,
                                title: Text("DOCTOR",style: TextStyle(fontSize: 8),),
                               controlAffinity: ListTileControlAffinity.leading,


                               // activeColor: Colors.green,
                                checkColor: Colors.blue.shade900,
                                onChanged: (bool? value){
                              setState(() {
                                checkBoxValue!=value;
                              });
                                }),
                          ),
                          SizedBox(
                            height: 20,
                            width: MediaQuery.of(context).size.width*0.35,

                            child: CheckboxListTile(value: checkBoxValue,
                                controlAffinity: ListTileControlAffinity.leading,
                                title: Text("PATIENT",style: TextStyle(fontSize: 8),),

                                // activeColor: Colors.green,
                                checkColor: Colors.blue.shade900,
                                onChanged: (bool? value){
                                  setState(() {
                                    checkBoxValue!=value;
                                  });
                                }),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){},

                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff3E1E82),
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              minimumSize: Size(350, 60)
                          ),
                          child: Text("Sign Up")
                      ),
                      TextButton(onPressed: (){},
                          child: Text("Already Have Account?",style: TextStyle(color: Colors.black),)
                      ),
                      TextButton(onPressed: (){},
                          child: Text("Sign Up !",style: TextStyle(color: Color(0xff3E1E82)),))
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Widget CustomField() {
  return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffD9D8D8),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none)));
}
