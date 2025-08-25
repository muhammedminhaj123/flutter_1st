import 'package:flutter/material.dart';

class Machinetest extends StatefulWidget {
  const Machinetest({super.key});

  @override
  State<Machinetest> createState() => _MachinetestState();
}

class _MachinetestState extends State<Machinetest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 10, 4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 100),
            child: CircleAvatar(
              radius: 165,
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/top-view-pizza-with-ai-generated-free-png (4).png",
                height: 310,
                width: 310,
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Get started",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 93, 10, 4),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
