import 'package:flutter/material.dart';

class Loginscreanbear extends StatefulWidget {
  const Loginscreanbear({super.key});

  @override
  State<Loginscreanbear> createState() => _LoginscreanbearState();
}

TextEditingController emailController = TextEditingController();

class _LoginscreanbearState extends State<Loginscreanbear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
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
          Text(
            "Log in on bear :)",
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
          SizedBox(height: 90),
          Container(
            height: 190,
            width: 210,
            child: Image.asset("assets/bear.png", fit: BoxFit.fill),
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            width: 330,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.brown.shade500, width: 3),
            ),
            child: TextFormField(
              controller: emailController,
              validator: (value) {},
              decoration: InputDecoration(
                hintText: "bear @gmail.com",
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 22),
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email),
                ),
              ),
            ),
          ),

          SizedBox(height: 15),
          Container(
            height: 60,
            width: 330,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(width: 3, color: Colors.brown.shade500),
            ),
            child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "password",
                hintStyle: TextStyle(fontSize: 22),
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.key),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          InkWell(
            onTap: () {
              print(emailController.text);
            },
            child: Container(
              height: 60,
              width: 330,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.brown.shade500,
              ),
              child: Row(
                children: [
                  SizedBox(width: 70),
                  Text(
                    "LOGIN WITH EMAIL",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 90),
              Text(
                "forgot password ?",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                " click here",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
