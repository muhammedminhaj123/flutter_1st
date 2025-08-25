import 'dart:math';

import 'package:flutter/material.dart';

class Machinetaskmain extends StatefulWidget {
  const Machinetaskmain({super.key});

  @override
  State<Machinetaskmain> createState() => _MachinetaskmainState();
}

class _MachinetaskmainState extends State<Machinetaskmain> {
  @override
  List a = [
    {
      "colors": const Color.fromARGB(255, 93, 10, 4),
      "image": "assets/burger-removebg-preview.png",
      "text": "Burger",
    },
    {
      "colors": Colors.grey.shade300,
      "image": "assets/top-view-pizza-with-ai-generated-free-png (4).png",
      "text": "Pizza",
    },
    {
      "colors": Colors.grey.shade300,
      "image": "assets/momo-removebg-preview.png",
      "text": "Momo",
    },
    {
      "colors": Colors.grey.shade300,
      "image": "assets/pastry-removebg-preview.png",
      "text": "Pastry",
    },
  ];
  List b = [
    {
      "image": "assets/burger-removebg-preview.png",
      "name": "Buff Burger",
      "price": "Rs.350",
    },
    {
      "image": "assets/burger-removebg-preview.png",
      "name": "Chicken Burger",
      "price": "Rs.390",
    },
    {
      "image": "assets/burger-removebg-preview.png",
      "name": "zinger Burger",
      "price": "Rs.380",
    },
    {
      "image": "assets/burger-removebg-preview.png",
      "name": "cheesey Burger",
      "price": "Rs.370",
    },
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Text(
              "Menu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/user.4-removebg-preview.png",
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 20),
                  child: SizedBox(
                    height: 40,
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Search for anything",
                        hintStyle: TextStyle(fontSize: 14),
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 0.9,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 140,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: a.length,
                      childAspectRatio: 0.15,
                    ),
                    itemCount: a.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: a[index]["colors"],
                            ),
                            child: Center(
                              child: Image.asset(a[index]["image"]),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            a[index]["text"],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Text(
                  "Friday Offer",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 178, 12, 0),
                              const Color.fromARGB(255, 255, 94, 83),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Text(
                                "Get",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "FREE COKE",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "On every burger",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200,

                        child: Image.asset(
                          "assets/colawithburger-removebg-preview.png",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "Tuday's Deal",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: b.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 100,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade200,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  b[index]["image"],
                                  height: 120,
                                  width: 120,
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        b[index]["name"],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      b[index]["price"],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: const Color.fromARGB(
                                          255,
                                          189,
                                          155,
                                          20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 10.0,
                                        bottom: 10,
                                      ),
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.green,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.only(left: 6, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, color: Colors.red, size: 30),

                  Icon(Icons.search, color: Colors.grey, size: 30),

                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Icon(Icons.person, color: Colors.grey, size: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
