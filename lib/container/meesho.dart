import 'package:flutter/material.dart';

class ShoppingAppmeesho extends StatefulWidget {
  const ShoppingAppmeesho({super.key});

  @override
  State<ShoppingAppmeesho> createState() => _ShoppingAppmeeshoState();
}

class _ShoppingAppmeeshoState extends State<ShoppingAppmeesho> {
  @override
  List b = [
    {
      "image": "assets/trackpant.jpg",
      "name": "Cassual Men Track pants",
      "price": "₹230",
      "sub": "Free Delivery",
      "rating": "4★",
    },
    {
      "image": "assets/Shirt.jpg",
      "name": "Regular Fit shirt",
      "price": "₹830",
      "sub": "Free Delivery",
      "rating": "4.5★",
    },
    {
      "image": "assets/sheo.jpg",
      "name": "comet-X Lows Cortado",
      "price": "₹4300",
      "sub": "Free Delivery",
      "rating": "4★",
    },
    {
      "image": "assets/hoodie.jpg",
      "name": "ADRO Men Cotton Hooded",
      "price": "₹899",
      "sub": "Free Delivery",
      "rating": "4.3★",
    },
  ];
  List C = [
    {
      "image": "assets/hadset.jpg",
      "name": "Bluetooth Headphones",
      "price": "₹530",
      "sub": "Free Delivery",
      "rating": "4.1★",
    },
    {
      "image": "assets/watch.jpg",
      "name": "Digital Display Stopwatch ",
      "price": "₹1459",
      "sub": "Free Delivery",
      "rating": "4.1★",
    },
    {
      "image": "assets/Tshirt.jpg",
      "name": "Men Cotton Maroon T-Shirt",
      "price": "₹450",
      "sub": "Free Delivery",
      "rating": "4★",
    },
    {
      "image": "assets/baggyjean.jpg",
      "name": " Y2k Men Baggy Jeans",
      "price": "₹1950",
      "sub": "Free Delivery",
      "rating": "4.5★",
    },
  ];
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
            child: ListView.builder(
              itemCount: b.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 250,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              (b[index]["image"]),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: 5),
                            Row(children: [Text(b[index]["name"])]),
                            Text(
                              b[index]["price"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(b[index]["sub"]),
                            Container(
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
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              (C[index]["image"]),
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(height: 5),
                            Row(children: [Text(C[index]["name"])]),
                            Text(
                              C[index]["price"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(C[index]["sub"]),
                            Container(
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.green.shade600,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  C[index]["rating"],
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
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
