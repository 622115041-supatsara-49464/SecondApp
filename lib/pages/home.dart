// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seconapp/pages/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fungi Knowledge"),
        backgroundColor: Colors.brown[600],
      ),
      body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: FutureBuilder(builder: (context, snapshot) {
            var data = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return MyBox(data[index]['img'], data[index]['title'],
                    data[index]['description'],data[index]['Details']);
              },
              itemCount: data.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),)),
    );
  }

  Widget MyBox(String img, String title, String description, String detail) {
    var v1, v2 ,v3 ,v4;
    v1 = title;
    v2 = description;
    v3 = img;
    v4 = detail;
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.all(16),
      height: 128,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.orangeAccent,
            Colors.red,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.fitWidth,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.1), BlendMode.softLight)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                print("Next page");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage(v1,v2,v3,v4)));
              },
              child: Text("read more >>",
                  style: TextStyle(fontSize: 12, color: Colors.white)))
        ],
      ),
    );
  }
}
