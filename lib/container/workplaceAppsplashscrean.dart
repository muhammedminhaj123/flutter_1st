import 'package:flutter/material.dart';
import 'package:project_1/container/workapphome.dart';

class Workplaceappsplashscrean extends StatefulWidget {
  const Workplaceappsplashscrean({super.key});

  @override
  State<Workplaceappsplashscrean> createState() =>
      _WorkplaceappsplashscreanState();
}

class _WorkplaceappsplashscreanState extends State<Workplaceappsplashscrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/workplace-removebg-preview.png"),
          Text(
            "Choose a  ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
          ),
          Text(
            "Place for your  ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
          ),
          Text(
            "Work ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            "Lorem ipsum dolor",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 60),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Workapphome()),
              );
            },
            child: Container(
              height: 45,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
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
