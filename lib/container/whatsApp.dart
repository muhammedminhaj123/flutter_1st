import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  List a = [
    {
      "name": "shadhil",
      "img": "assets/user1-removebg-preview.png",
      "sub": "player",
    },
    {
      "name": "linshad",
      "img": "assets/user2-removebg-preview.png",
      "sub": "doctor",
    },
    {
      "name": "minhaj",
      "img": "assets/user1-removebg-preview.png",
      "sub": "developer",
    },
    {
      "name": "shamil",
      "img": "assets/user2-removebg-preview.png",
      "sub": "enginear",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.qr_code, color: Colors.white),
                Icon(Icons.camera_alt_outlined, color: Colors.white),
                Icon(Icons.menu, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.green.shade800,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 40,
                bottom: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Ask Mata AI or Search",
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: a.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Image.asset((a[index]["img"]), fit: BoxFit.fill),
                  ),
                  title: Text(a[index]["name"]),
                  subtitle: Text((a[index]["sub"])),
                  trailing: Icon(Icons.message_sharp),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
