import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical7/customDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("18IT045 - Practical7"),
        toolbarHeight: 80,
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Different Views",style: TextStyle(fontSize: 28, color: Colors.black87),),
            SizedBox(height: 20,),
            SizedBox(height: 10,),
            Text("List Views",style: TextStyle(fontSize: 18, color: Colors.black87),),
            SizedBox(height: 10,),
            Text("Grid Views",style: TextStyle(fontSize: 18, color: Colors.black87),),
            SizedBox(height: 10,),
            Text("Card Views",style: TextStyle(fontSize: 18, color: Colors.black87),),
            SizedBox(height: 10,),
            Text("Web Views",style: TextStyle(fontSize: 18, color: Colors.black87),),
            SizedBox(height: 10,),
            Text("Tabbed Views",style: TextStyle(fontSize: 18, color: Colors.black87),),
            SizedBox(height: 10,),
            Text("Scroll Views",style: TextStyle(fontSize: 18, color: Colors.black87),),
            SizedBox(height: 10,),
            Text("Drawer(Navigation) Views",style: TextStyle(fontSize: 18, color: Colors.black87),)
          ],
        ),
      ),
    );
  }
}
