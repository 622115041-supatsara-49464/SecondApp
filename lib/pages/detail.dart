// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
 
final v1,v2,v3,v4;
  DetailPage(this.v1,this.v2,this.v3,this.v4);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _v1,_v2,_v3,_v4;
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fungi Knowledge"),
        backgroundColor: Colors.brown[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(child: Image(image: NetworkImage(_v3), height: 400)),
            SizedBox(height:8),
            Center(child: Text(_v1, style: TextStyle(fontSize: 24, color: Color(0xff822b11)))),
            Center(child: Text(_v2, style: TextStyle(fontSize: 12, color: Color(0xff757575)))),
            SizedBox(height:8),
            Text(_v4, style: TextStyle(fontSize: 16, color: Color(0xff262626))),
            
          ],
        ),
      ),
    );
  }
}
