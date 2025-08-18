import 'package:flutter/material.dart';
import 'package:project_1/container/beartask.dart';

class Bear0 extends StatefulWidget {
  const Bear0({super.key});

  @override
  State<Bear0> createState() => _Bear0State();
}

class _Bear0State extends State<Bear0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscrean()),
          );
        },
        backgroundColor: Colors.brown,
        child: Icon(Icons.arrow_forward, color: Colors.white),
      ),
      body: Center(child: Image.asset("assets/bear.png")),
    );
  }
}
