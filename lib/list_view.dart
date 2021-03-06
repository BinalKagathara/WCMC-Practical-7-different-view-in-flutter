import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:practical7/customDrawer.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View, Scroll View"),
        toolbarHeight: 80,
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "ListView having Horizontal ScrollView",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
              Container(
                height: 200.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      color: Colors.tealAccent
                    ),
                    Container(
                        width: 160.0,
                        color: Colors.lightGreenAccent,
                    ),
                    Container(
                        width: 160.0,
                        color: Colors.lightGreen,
                    ),
                    Container(
                        width: 160.0,
                        color: Colors.green,
                    ),
                    Container(
                        width: 160.0,
                        color: Colors.teal,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "ListView Having Vertical ScrollView",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: new BoxConstraints(
                  minHeight: 160.0,
                  maxHeight: 320.0,
                ),
                child: ListView(
                  shrinkWrap: true,
                  // This next line does the trick.
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Container(
                      height: 160.0,
                      color: Colors.tealAccent,
                    ),
                    Container(
                        height: 160.0,
                        color: Colors.lightGreenAccent,
                    ),
                    Container(
                        height: 160.0,
                        color: Colors.lightGreen,
                    ),
                    Container(
                        height: 160.0,
                        color: Colors.green,
                    ),
                    Container(
                        height: 160.0,
                        color: Colors.teal,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
