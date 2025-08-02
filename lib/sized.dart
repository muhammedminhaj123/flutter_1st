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
          Row(
            children: [
              SizedBox(width: 60),
              Icon(Icons.person),
              SizedBox(width: 60),
              Icon(Icons.person),
            ],
          ),
          Text("text"),
          Text("text"),
        ],
      ),
    );
  }
}
