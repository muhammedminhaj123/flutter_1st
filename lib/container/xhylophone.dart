import 'package:flutter/material.dart';

class XhylophoneApp extends StatefulWidget {
  const XhylophoneApp({super.key});

  @override
  State<XhylophoneApp> createState() => _XhylophoneAppState();
}

class _XhylophoneAppState extends State<XhylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade900,
                  ),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
