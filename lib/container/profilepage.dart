import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  List D = [
    {"icon": Icon(Icons.person_outlined), "title": "Name", "sub": "name"},
    {"icon": Icon(Icons.info_outline), "title": "About", "sub": "yyyyyoooo"},
    {"icon": Icon(Icons.phone), "title": "Phone", "sub": "+91 9048869410"},
    {"icon": Icon(Icons.link), "title": "Links", "sub": "Add links"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * .5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueGrey.shade400,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Icon(
                    Icons.person_rounded,
                    size: 90,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: D.length,
            itemBuilder: (context, index) {
              return Row(children: [Container(child: Icon(D[index]["icon"]))]);
            },
          ),
        ],
      ),
    );
  }
}
