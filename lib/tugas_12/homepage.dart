import 'package:flutter/material.dart';
import 'package:flutter_task_bootcampsanber/tugas_11/drawerScreen.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/profilepage.dart';
import 'package:flutter_task_bootcampsanber/tugas_12/searchpage.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);


  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentIndex = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Nganggur!", style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.search, color: Colors.black,),
          ),
        ],
      ),
      drawer: drawerScreen(),
      body:
      Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 10),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Let's Find",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                  Icon(Icons.notifications,color: Colors.grey,)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Your dream jobs", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Mau kerja dimana?"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Pekerjaan Untukmu", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
              ),
              SizedBox(
                height: 40,
              ),
              jobs_item(context),
            ],
          ),
        ),
      ),

    );

  }
}

Container jobs_item(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height / 2,
    child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/gojek.png",
              height: 20,
              width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("Data Science",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
              SizedBox(
                height: 16,
              ),
              Text("1 Years Experience",style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Internship",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Junior", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/blibli.png",
                height: 20,
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("Flutter Developer",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
              SizedBox(
                height: 16,
              ),
              Text("1-3 Years Experience",style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Internship",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Senior", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/shopee.png",
                height: 20,
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("Digital Marketing",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
              SizedBox(
                height: 16,
              ),
              Text("0 Years Experience",style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Freelance",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Junior", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/bukalapak.png",
                height: 20,
                width: 20,),
              SizedBox(
                height: 16,
              ),
              Text("Back End Developer",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
              SizedBox(
                height: 16,
              ),
              Text("5 Years Experience",style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Fulltime",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Senior", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}



