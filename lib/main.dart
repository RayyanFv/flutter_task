import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_bootcampsanber/tugas_11/telegram.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/homepage.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/mainpage.dart';
import 'package:flutter_task_bootcampsanber/tugas_13_API/getDataScreen.dart';
import 'package:flutter_task_bootcampsanber/tugas_14_authentication/loginpage.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo API",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      // routes: {
      //   '/': (context) => loginPage(),
      //   '/home' : (context) => mainPage(),
      // },

    home: loginPage(),
    );
  }
}
