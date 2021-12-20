import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fungi Knowledge"),
        backgroundColor: Colors.brown[600],
      ),
      body: ListView(
        children: [
          Text("Detail Description")
        ],
      ),
    );
  }
}
