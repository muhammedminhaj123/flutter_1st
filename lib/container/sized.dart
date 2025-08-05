import 'package:flutter/material.dart';

class sizedscrean extends StatefulWidget {
  const sizedscrean({super.key});

  @override
  State<sizedscrean> createState() => _sizedscreanState();
}

class _sizedscreanState extends State<sizedscrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "sizedbox",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 120),
              Icon(Icons.person),
              SizedBox(width: 120),
              Icon(Icons.person),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 120),
              Text("text"),
              SizedBox(width: 120),
              Text("text"),
            ],
          ),
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 60),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  child: Icon(Icons.person, color: Colors.blue),
                ),
              ),
              SizedBox(width: 60),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 30,
                child: Icon(Icons.inbox, color: Colors.blue),
              ),
              SizedBox(width: 60),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                child: Icon(Icons.clean_hands, color: Colors.blue),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 65),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("person"),
              ),
              SizedBox(width: 70),
              Text("inbox"),
              SizedBox(width: 75),
              Text("cleaning"),
            ],
          ),
          SizedBox(width: 70, height: 100),
          Row(
            children: [
              Row(
                children: [
                  SizedBox(width: 100),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Text("text", style: TextStyle(color: Colors.blue)),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.white,
                          child: Icon(Icons.wallet),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text("text", style: TextStyle(color: Colors.black)),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      child: Icon(Icons.wallet),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
