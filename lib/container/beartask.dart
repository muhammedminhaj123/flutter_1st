import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_1/container/beartask1.dart';

class Loginscrean extends StatefulWidget {
  const Loginscrean({super.key});

  @override
  State<Loginscrean> createState() => _LoginscreanState();
}

class _LoginscreanState extends State<Loginscrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown.shade100),
      backgroundColor: Colors.brown.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscreanbear()),
          );
        },
        backgroundColor: Colors.brown,
        child: Icon(Icons.arrow_forward, color: Colors.white),
      ),

      body: Column(
        children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 140.0),
            child: Row(
              children: [
                Text(
                  "bear",
                  style: TextStyle(
                    fontSize: 68,
                    color: Colors.brown.shade500,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ".",
                  style: TextStyle(
                    fontSize: 68,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 90),
          Container(
            height: 190,
            width: 210,
            child: Image.asset("assets/hibear.png", fit: BoxFit.fill),
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            width: 330,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.brown.shade500,
            ),
            child: Row(
              children: [
                SizedBox(width: 30),
                Icon(Icons.email, color: Colors.white, size: 33),
                SizedBox(width: 20),
                Text(
                  "LOGIN WITH EMAIL",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 60,
            width: 330,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(255, 54, 51, 87),
            ),
            child: Row(
              children: [
                SizedBox(width: 30),
                Icon(Icons.facebook, color: Colors.white, size: 33),
                SizedBox(width: 20),
                Text(
                  "LOGIN WITH FACEBOOK",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 70),
              Text(
                "didn't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                "sign up",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 150),
          Text(
            "By continue you agree to our",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(
            "Terms & Privacy policy",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
