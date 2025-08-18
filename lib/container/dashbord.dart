import 'package:flutter/material.dart';
import 'package:project_1/container/dashbord1.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 22, 56),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 15.0),
          child: Row(
            children: [
              SizedBox(width: 280),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Icon(Icons.person, size: 30),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 20, 56),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashbord1()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
      body: Column(
        children: [
          SizedBox(width: 10, height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "last update 25 feb 2020",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 750,
            width: 412,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(23),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Icon(Icons.account_circle_outlined, size: 100),
                          Text("My Account"),
                        ],
                      ),
                    ),
                    SizedBox(width: 80),
                    Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Icon(Icons.local_shipping_outlined, size: 100),
                          Text("inventory"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Icon(Icons.engineering_outlined, size: 100),
                          Text("search mechanic"),
                        ],
                      ),
                    ),

                    SizedBox(width: 80),
                    Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Icon(Icons.request_page_outlined, size: 100),
                          Text("requast"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Icon(Icons.analytics_outlined, size: 100),
                          Text("analytics"),
                        ],
                      ),
                    ),

                    SizedBox(width: 80),
                    Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.contact_mail_outlined, size: 100),
                          Text("contact us"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
