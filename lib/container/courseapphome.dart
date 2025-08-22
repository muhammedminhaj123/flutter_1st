import 'package:flutter/material.dart';
import 'package:project_1/container/courseapp.dart';

class Courseapphome extends StatefulWidget {
  const Courseapphome({super.key});

  @override
  State<Courseapphome> createState() => _CourseapphomeState();
}

class _CourseapphomeState extends State<Courseapphome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.65,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/studyset-removebg-preview.png"),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Learning  is  Everything",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(height: 10),
          Text(
            "Learning with pleasure with Dear",
            style: TextStyle(fontSize: 18),
          ),
          Text("proggramer,wherever you are.", style: TextStyle(fontSize: 18)),
          SizedBox(height: 50),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Courseapp()),
              );
            },
            child: Container(
              height: 50,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Get Start",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20,
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
