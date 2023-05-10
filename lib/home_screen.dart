import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:url_launcher/url_launcher.dart';
import 'package:av_test/Screens_A/scratch.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: " home "),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: " person"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: " chat")
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width ,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                    Color(0xFFc5cae9),
                    Color(0xffD4CFC8),
                    // Color(0xFF7986cb),
                    Color(0xFFdcf4ff),
                    Color(0xffced5e8),
                    Color(0xFFc5cae9),
                    Color(0xFFc5cae9),
                  ])),
            ),
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff949398),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(

                  children: [
                    SizedBox(height: 50,),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hi...!",
                                style: TextStyle(
                                  color: Color(0xfffec102),
                                  fontSize: 25,
                                )),
                            Text(
                              "Find Your Doctor",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/profile.jpg'),
                        ),
                      ]
                    ),

                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
                          child: SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Search....",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                        ),
                        Text(
                          "Continue Excercising",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: urlList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return MyCard(urlList[index]);
                            },
                          ),
                        ),
                        Text(
                          "Last Related Doctors",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Container(
                          height: 250,

                          /*decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),*/
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: drList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return DoctorCard(
                                  drList[index].imgPath,
                                  drList[index].name,
                                  drList[index].department,
                                  drList[index].rate);
                            },
                          ),
                        ),
                    Text(
                      "Last Contacted Doctors",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                   Container(
                     height: 250,

                     child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: drList.length,
                         itemBuilder: (BuildContext context,int index){
                        return ContantedDoc(
                            drList[index].rate,
                            drList[index].imgPath,
                            drList[index].salary,
                            drList[index].name);
                      }),
                   ),


                      ],
                    ),
              ),

              ),

          ],
        ),
      ),
    );
  }
}

Widget MyCard(String url) {
  String id = url.substring(url.length - 11);
  String urlLink = "https://img.youtube.com/vi/${id}/0.jpg";
  return GestureDetector(
    onTap: () {
      launchUrl(Uri.parse(url));
    },
    child: Card(
      child: Image.network("${urlLink}"),
    ),
  );
}

Widget DoctorCard(String imgPath, String name, String dep, double rate) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // height: 50,
          color: Color(0xffeaeaea),
          width: 200,
          /*decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Color(0xffeaeaea)
              //0xffD9DAD6)
              //(0xffE5E1DA),
              ),*/
          child: Column(
            children: [
              Image.network(imgPath),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(dep),
              RatingBarIndicator(
                rating: rate,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 30,
                direction: Axis.horizontal,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
Widget ContantedDoc(double rate,String imgPath,int salary,String name){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        child: Container(
          color: Color(0xffeaeaea),
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border,color: Colors.red),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text(rate.toString()),
                      ],
                    ),

                  ],
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(imgPath),
                ),

                Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text("\$ ${salary}/hours",style: TextStyle(color: Colors.grey,fontSize: 20),),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
