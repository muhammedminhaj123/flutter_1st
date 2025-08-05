import 'package:flutter/material.dart';

class richyt extends StatefulWidget {
  const richyt({super.key});

  @override
  State<richyt> createState() => _richytState();
}

class _richytState extends State<richyt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("iam rich", style: TextStyle(fontSize: 26))),
        backgroundColor: Colors.red[900],
      ),
      body: Center(child: Image.network("assets/image22.jpg")),
    );
  }
}
