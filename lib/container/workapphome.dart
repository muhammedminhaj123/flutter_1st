import 'package:flutter/material.dart';

class Workapphome extends StatefulWidget {
  const Workapphome({super.key});

  @override
  State<Workapphome> createState() => _WorkapphomeState();
}

class _WorkapphomeState extends State<Workapphome> {
  @override
  List properties = [
    {
      "text": "All proprties",
      "color": Colors.deepPurple,
      "color2": Colors.white,
    },
    {"text": "Go space", "color": Colors.white, "color2": Colors.black},
    {"text": "meating", "color": Colors.white, "color2": Colors.black},
    {"text": "privet", "color": Colors.white, "color2": Colors.black},
    {"text": "public", "color": Colors.white, "color2": Colors.black},
    {"text": "office", "color": Colors.white, "color2": Colors.black},
    {"text": "privet", "color": Colors.white, "color2": Colors.black},
    {"text": "pivate", "color": Colors.white, "color2": Colors.black},
    {"text": "meanting", "color": Colors.white, "color2": Colors.black},
    {"text": "meating", "color": Colors.white, "color2": Colors.black},
    {"text": "meating", "color": Colors.white, "color2": Colors.black},
    {"text": "meating", "color": Colors.white, "color2": Colors.black},
    {"text": "meating", "color": Colors.white, "color2": Colors.black},
  ];
  List properties2 = [
    {"title": "Privat room rent", "date": "Feb 15,2025", "price": "\$130"},
    {"title": "meeting room rent", "date": "Feb 16,2025", "price": "\$130"},
    {"title": "public room rent", "date": "Feb 15,2025", "price": "\$130"},
    {"title": "meating room rent", "date": "Feb 15,2025", "price": "\$130"},
    {"title": "meating room rent", "date": "Feb 15,2025", "price": "\$130"},
    {"title": "meating room rent", "date": "Feb 15,2025", "price": "\$130"},
    {"title": "meating room rent", "date": "Feb 15,2025", "price": "\$130"},
    {"title": "meeting room rent", "date": "Feb 15,2025", "price": "\$130"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("find places near", style: TextStyle(fontSize: 18)),
              Text(
                "San Francisco,USA",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 10),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    hintText: "search all places",
                    hintStyle: TextStyle(fontSize: 14),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: properties.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: properties[index]["color"],
                        border: Border.all(
                          width: 1,
                          color: properties[index]["color2"],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          properties[index]["text"],
                          style: TextStyle(
                            fontSize: 18,
                            color: properties[index]["color2"],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  child: Image.asset("assets/work2-removebg-preview.png"),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Blue Tower Coworking",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      "\$150/mo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "123 Meridian Street,San francisco",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest activity",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      "see All",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: properties2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              properties2[index]["title"],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              properties2[index]["date"],
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            properties2[index]["price"],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left: 6, top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: Colors.deepPurple, size: 30),

              Icon(Icons.search, color: Colors.grey, size: 30),
              Icon(Icons.refresh, color: Colors.grey, size: 30),
              Icon(Icons.favorite, color: Colors.grey, size: 30),
              Icon(Icons.person, color: Colors.grey, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
