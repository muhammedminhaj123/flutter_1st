import 'package:flutter/material.dart';

class Listviewscrean extends StatefulWidget {
  const Listviewscrean({super.key});

  @override
  State<Listviewscrean> createState() => _ListviewscreanState();
}

class _ListviewscreanState extends State<Listviewscrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text("search mechanic"),
        leading: Icon(Icons.align_horizontal_left),
        actions: [Icon(Icons.notification_add)],
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Icon(Icons.align_horizontal_left),
        //     Text("search mechanic"),
        //     Icon(Icons.notification_add),
        //   ],
        // ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        "assets/user1-removebg-preview.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Henry Curtis ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$55/",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: const Color.fromARGB(255, 50, 88, 51),
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.verified, color: Colors.orangeAccent, size: 30),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
