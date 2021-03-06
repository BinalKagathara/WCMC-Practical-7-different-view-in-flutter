import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practical7/customDrawer.dart';

class GridPage extends StatefulWidget {
  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        toolbarHeight: 80,
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(20, (index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, 5))
                ],
              ),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 28),

                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
