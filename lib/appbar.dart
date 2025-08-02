import 'package:flutter/material.dart';

class AppbarScreen extends StatefulWidget {
  const AppbarScreen({super.key});

  @override
  State<AppbarScreen> createState() => _AppbarScreenState();
}

class _AppbarScreenState extends State<AppbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.blueAccent.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
         shadowColor: Colors.white,
    title: const Text("jaamjoom",
    style: TextStyle(color:Colors.black,fontSize: 28, ),
    ),),
   body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:  [
      const SizedBox(
        height: 100,
        width: 100,
        child: Icon(Icons.message),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(color: Colors.amber,
        border: Border.all(width: 4),
        borderRadius: BorderRadius.circular(
      20),
      ),
      )
    ],
    )
   
    
    
    );
    
  }
}