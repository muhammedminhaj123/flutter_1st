import 'package:flutter/material.dart';
import 'package:project_1/container/sized.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60, width: 40),
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                height: 150,
                width: 150,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(radius: 50),
                    Text("text", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(width: 170),
              Column(
                children: [
                  Text("text", style: TextStyle(fontSize: 20)),
                  Text("text", style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(radius: 50, backgroundColor: Colors.black),
                    Text("text", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(width: 80),
              Container(
                height: 130,
                width: 130,
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "text",
                      style: TextStyle(fontSize: 15, color: Colors.amber),
                    ),
                    CircleAvatar(radius: 40, backgroundColor: Colors.amber),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                height: 150,
                width: 150,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(radius: 50),
                    Text("text", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(width: 80),
              Container(
                height: 130,
                width: 130,
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "text",
                      style: TextStyle(fontSize: 15, color: Colors.amber),
                    ),
                    CircleAvatar(radius: 40, backgroundColor: Colors.amber),
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
