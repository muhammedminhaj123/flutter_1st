import 'package:flutter/material.dart';
import 'package:project_1/container/bear0.dart';
import 'package:project_1/container/beartask.dart';
import 'package:project_1/container/beartask1.dart';
import 'package:project_1/container/bussinesscard.dart';
import 'package:project_1/container/coloredbox.dart';
import 'package:project_1/container/courseapp.dart';
import 'package:project_1/container/courseapphome.dart';
import 'package:project_1/container/coursepage.dart';
import 'package:project_1/container/dashbord.dart';
import 'package:project_1/container/dashbord1.dart';
import 'package:project_1/container/listview.dart';
import 'package:project_1/container/machinetaskmain.dart';
import 'package:project_1/container/machinetest.dart';
import 'package:project_1/container/meesho.dart';
import 'package:project_1/container/meeshogridview.dart';
import 'package:project_1/container/profilepage.dart';

import 'package:project_1/container/richapp.dart';
import 'package:project_1/container/task1.dart';
import 'package:project_1/container/task2.dart';
import 'package:project_1/container/container_task.dart';
import 'package:project_1/container/sized.dart';
import 'package:project_1/container/task5.dart';
import 'package:project_1/container/whatsApp.dart';
import 'package:project_1/container/workapphome.dart';
import 'package:project_1/container/workplaceAppsplashscrean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Machinetaskmain(),
    );
  }
}
