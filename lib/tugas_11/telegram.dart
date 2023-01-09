import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_task_bootcampsanber/tugas_11/drawerScreen.dart';
import 'chart_model.dart';

class telegram extends StatefulWidget {
  const telegram({super.key});

  @override
  State<telegram> createState() => _telegramState();
}

class _telegramState extends State<telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("telegram"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: drawerScreen(),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(items[i].profileUrl!),
              ),
              title: Text(
                items[i].name!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(items[i].message!),
              trailing: Text(items[i].time!),
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: items.length),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.create,
          color: Colors.white,
        ),
        backgroundColor: Colors.amber,
        onPressed: () {},
      ),
    );
  }
}
