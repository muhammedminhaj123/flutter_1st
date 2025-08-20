import 'package:flutter/material.dart';

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  @override
  List a = [
    {"title": "Introdection to flutter", "sub": "20 min 50 sec"},
    {"title": "Installing flutter on Windows", "sub": "21 min 50 sec"},
    {"title": "Setup Emulator on Windows", "sub": "20 min 50 sec"},
    {"title": "Creating our first App", "sub": "24 min 50 sec"},
    {"title": "Widgets at flutter", "sub": "20 min 00 sec"},
    {"title": "Introdection to flutter", "sub": "20 min 50 sec"},
    {"title": "Installing flutter on Windows", "sub": "21 min 50 sec"},
    {"title": "Setup Emulator on Windows", "sub": "20 min 50 sec"},
    {"title": "Creating our first App", "sub": "24 min 50 sec"},
    {"title": "Widgets at flutter", "sub": "20 min 00 sec"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Flutter", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.notifications, color: Colors.deepPurple),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/fluttericon-removebg-preview.png"),
                ),
              ),
              Text(
                "Flutter Complete Course",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "Created by Dear Programmer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text("55 videos", style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: a.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 20),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              a[index]["title"],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(a[index]["sub"]),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
