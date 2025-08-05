import 'package:flutter/material.dart';

class Taskimg extends StatefulWidget {
  const Taskimg({super.key});

  @override
  State<Taskimg> createState() => _TaskimgState();
}

class _TaskimgState extends State<Taskimg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 80),
              Container(
                height: 200,
                width: 250,
                child: Image.asset("assets/image33.jpg", fit: BoxFit.fill),
              ),
            ],
          ),
          SizedBox(height: 36),
          Row(
            children: [
              SizedBox(width: 20),
              Column(
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                              "assets/image22.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "text",
                            style: TextStyle(fontSize: 50, color: Colors.blue),
                          ),
                          Text(
                            "text",
                            style: TextStyle(fontSize: 50, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 170),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    child: Image.network(
                      "https://static.vecteezy.com/system/resources/previews/049/855/259/non_2x/nature-background-high-resolution-wallpaper-for-a-serene-and-stunning-view-photo.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: 100,
                    child: Image.network(
                      "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
