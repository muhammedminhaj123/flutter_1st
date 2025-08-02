import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColoredboxScreen extends StatefulWidget {
  const ColoredboxScreen({super.key});

  @override
  State<ColoredboxScreen> createState() => _ColoredboxScreenState();
}

class _ColoredboxScreenState extends State<ColoredboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'coloredbox',
            style: TextStyle(color: Colors.black),
            ),
            ),
            ),
       body: 
         Column(
        children: [
          Row(
            children: [
              Container(
                      height: 350,
                      width: 230,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 350,
                      width:179 ,
                      color: Colors.red,
                    ) 
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(33.0),
            child: Center(
              child: Container(
                height:90 ,
                width:90,
                color: Colors.black,
                
              ),

            ),
          ),
          SizedBox(
            height: 20,

          ),
          Container(
            height: 333,
            width: 412,
            color: Colors.red,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )

        ],
        
        )
      );
  }
}