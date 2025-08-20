import 'package:flutter/material.dart';
import 'package:project_1/container/coursepage.dart';

class Courseapp extends StatefulWidget {
  const Courseapp({super.key});

  @override
  State<Courseapp> createState() => _CourseappState();
}

class _CourseappState extends State<Courseapp> {
  final List<Map<String, dynamic>> D = [
    {"icon": Icons.category, "title": "Category", "color": Colors.amber},
    {"icon": Icons.class_, "title": "Classes", "color": Colors.green},
    {"icon": Icons.school, "title": "Free Course", "color": Colors.blue},
    {"icon": Icons.book, "title": "Book Store", "color": Colors.red},
    {
      "icon": Icons.play_circle_fill,
      "title": "Live course",
      "color": Colors.purple,
    },
    {
      "icon": Icons.emoji_events,
      "title": "LeaderBoard",
      "color": Colors.lightGreen,
    },
  ];
  List courses = [
    {
      "image": "assets/fluttericon-removebg-preview.png",
      "title": "Flutter",
      "sub": "55 videos",
    },
    {
      "image": "assets/react_icon-removebg-preview.png",
      "title": "React Native",
      "sub": "55 videos",
    },
    {
      "image":
          "assets/hd-python-logo-symbol-transparent-png-735811696257415dbkifcuokn-removebg-preview.png",
      "title": "Phython",
      "sub": "54 videos",
    },
    {
      "image": "assets/c++_logo-removebg-preview.png",
      "title": "C++",
      "sub": "59 videos",
    },
    {
      "image":
          "assets/hd-python-logo-symbol-transparent-png-735811696257415dbkifcuokn-removebg-preview.png",
      "title": "Phython",
      "sub": "54 videos",
    },
    {
      "image": "assets/c++_logo-removebg-preview.png",
      "title": "C++",
      "sub": "59 videos",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.dashboard, color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.deepPurple,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Hi, Programmer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade500,
                            width: 1,
                          ),
                        ),
                        hintText: "Search here",
                        hintStyle: TextStyle(fontSize: 14),
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: D.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: D[index]["color"],
                        radius: 35,
                        child: Icon(
                          D[index]["icon"],
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Text(D[index]["title"], style: TextStyle(fontSize: 15)),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "courses",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: courses.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Coursepage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            courses[index]["image"],
                            height: 80,
                            width: 80,
                          ),
                          Text(
                            courses[index]["title"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            courses[index]["sub"],
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
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
              Column(
                children: [
                  Icon(Icons.home, color: Colors.deepPurple, size: 30),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.menu_book, color: Colors.grey, size: 30),
                  Text("courses", style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.favorite, color: Colors.grey, size: 30),
                  Text("Wishlist", style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.person, color: Colors.grey, size: 30),
                  Text("Account", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
