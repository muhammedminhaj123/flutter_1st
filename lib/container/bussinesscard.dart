import 'package:flutter/material.dart';

class Bussiness extends StatefulWidget {
  const Bussiness({super.key});

  @override
  State<Bussiness> createState() => _BussinessState();
}

class _BussinessState extends State<Bussiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 103, 58, 183),
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              "assets/minhaj123-removebg-preview.png",
            ),
          ),
          Text(
            "minhaj",
            style: TextStyle(
              fontSize: 40.4,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
