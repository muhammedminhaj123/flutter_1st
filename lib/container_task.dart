import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerTask extends StatefulWidget {
  const ContainerTask({super.key});

  @override
  State<ContainerTask> createState() => _ContainerTaskState();
}

class _ContainerTaskState extends State<ContainerTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "App bar",
              style: TextStyle(fontSize: 28, color: Colors.amber),
            ),
          ),
          leading: const Icon(Icons.person),
          actions: const [
            Icon(Icons.phone),
            SizedBox(
              width: 19,
            ),
            Icon(Icons.logout),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            const Row(
              children: [
                Text(
                  "container",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "sized box",
                  style: TextStyle(fontSize: 35, color: Colors.blue
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 300,
                  width: 300,
                  color: Colors.black,
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.black,
                          child: Center(
                            child: Container(
                              height: 150,
                              width: 150,
                              color: Colors.white,
                            ),
                          ),
                          ),
                          
                      ),
                    ),
                  )),
            )
          ],
        ));
  }
}
