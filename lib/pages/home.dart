// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';

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
        child: ListView(
          children: [
            MyBox(
                "https://images.unsplash.com/photo-1505820013142-f86a3439c5b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
            SizedBox(
              height: 16,
            ),
            MyBox(
                "https://images.unsplash.com/photo-1505763657442-62574e7a0379?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
            SizedBox(
              height: 16,
            ),
            MyBox(
                "https://images.unsplash.com/photo-1519305124423-5ccccff55da9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80"),
          ],
        ),
      ),
    );
  }
}

Widget MyBox(img) {
  return Container(
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
        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.softLight)
      ),
    ),

          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What is looove",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis urna ac lorem mollis, lacinia rhoncus purus aliquet.",
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    ),
  );
}
