import 'package:flutter/material.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/homepage.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/profilepage.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/searchpage.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int currentIndex = 0;
  final List<Widget> _pages = [homeScreen(),searchPage(),profilePage(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/Home.png',width: 21,),label: 'Home'),
            BottomNavigationBarItem(icon: Image.asset('assets/Search.png', width: 20,),label: 'Search'),
            BottomNavigationBarItem(icon: Image.asset('assets/Profile.png', width: 20,),label: 'Profile'),
          ]
      ),
    );

  }
}


