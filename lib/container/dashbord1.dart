import 'package:flutter/material.dart';
import 'package:project_1/container/bear0.dart';
import 'package:project_1/container/coloredbox.dart';
import 'package:project_1/container/dashbord.dart';
import 'package:project_1/container/sized.dart';

class Dashbord1 extends StatefulWidget {
  const Dashbord1({super.key});

  @override
  State<Dashbord1> createState() => _Dashbord1State();
}

class _Dashbord1State extends State<Dashbord1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 10.0),
          child: Row(
            children: [
              SizedBox(width: 50),
              Text("search mechanic", style: TextStyle(fontSize: 16)),
              SizedBox(width: 100),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Icon(Icons.notification_add, size: 30),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0, top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 80,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/user1-removebg-preview.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              "Henry Curtis ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$45/",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 45, 117, 48),
                                ),
                              ),
                              Text("/hour"),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Icon(
                          Icons.verified,
                          color: Colors.orangeAccent,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        "assets/user2-removebg-preview.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            "Michel Hary ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        Text(
                          "\$55/",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: const Color.fromARGB(255, 50, 88, 51),
                          ),
                        ),
                        Text("/hour"),
                      ],
                    ),
                    Icon(Icons.verified, color: Colors.orangeAccent, size: 30),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset("assets/user2.png", fit: BoxFit.fill),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Craig Arnold ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            "\$40/",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 50, 88, 51),
                            ),
                          ),
                          Text("/hour"),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Icon(
                      Icons.verified,
                      color: Colors.orangeAccent,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/download-removebg-preview.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              "Curtis Michal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$40/",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 50, 88, 51),
                                ),
                              ),
                              Text("/hour"),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Icon(
                          Icons.verified,
                          color: Colors.orangeAccent,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      "assets/user.4-removebg-preview.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Ortiz Whealer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            "\$60/",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 50, 88, 51),
                            ),
                          ),

                          Text("/hour"),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Icon(
                      Icons.verified,
                      color: Colors.orangeAccent,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Dashbord()),
                  );
                },
                child: Icon(Icons.arrow_back, size: 28),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bear0()),
                  );
                },
                child: Icon(Icons.home, size: 32, color: Colors.teal),
              ),
              Icon(Icons.person_outline, size: 28),
            ],
          ),
        ),
      ),
    );
  }
}
