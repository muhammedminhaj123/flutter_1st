import 'package:flutter/material.dart';
import 'dart:math';

class Diasapp extends StatefulWidget {
  const Diasapp({super.key});

  @override
  State<Diasapp> createState() => _DiasappState();
}

class _DiasappState extends State<Diasapp> {
  var dicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.red.shade900),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250),
            Container(
              height: 150,
              width: 150,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    dicenumber = Random().nextInt(6) + 1;
                    print(dicenumber);
                  });
                },
                child: Image.asset("assets/dice$dicenumber.jpg"),
              ),
            ),
            Text(
              "your lucky number=$dicenumber",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
