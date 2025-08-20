import 'package:flutter/material.dart';
import 'package:project_1/container/Listmeesho.dart';

class Meeshogridview extends StatefulWidget {
  const Meeshogridview({super.key});

  @override
  State<Meeshogridview> createState() => _MeeshogridviewState();
}

class _MeeshogridviewState extends State<Meeshogridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello,"),
              Text("Lets'shop", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_outline_outlined),
                SizedBox(width: 15),
                Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 30,
                bottom: 30,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade500, width: 1),
                ),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search by Keyword or Prodect Id",
                    hintStyle: TextStyle(fontSize: 14),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Icon(Icons.search),
                    ),
                    suffixIcon: Icon(Icons.mic),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: b.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 400,
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          (b[index]["image"]),
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          fit: BoxFit.fill,
                        ),
                        Row(children: [Text(b[index]["name"])]),
                        Text(
                          b[index]["price"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(b[index]["sub"]),
                        Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              b[index]["rating"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
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
    );
  }
}
