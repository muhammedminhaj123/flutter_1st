import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundColor: Colors.blue),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Text("text", style: TextStyle(fontSize: 22)),
                Text("text", style: TextStyle(fontSize: 22)),
              ],
            ),
          ),
        ),
        actions: [Icon(Icons.person), Icon(Icons.menu)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(42.5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: Image.asset("assets/image22.jpg"),
                          ),

                          Text(
                            "Destinations",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Book now",
                            style: TextStyle(color: Colors.red.shade600),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InkWell(
                      child: Container(
                        height: 250,
                        color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/user.4-removebg-preview.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Admin",
                                style: TextStyle(fontSize: 28),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Shehin",
                                style: TextStyle(fontSize: 28),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
