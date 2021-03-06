import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'customDrawer.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card View"),
        toolbarHeight: 80,

      ),
      drawer: CustomDrawer(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Card View",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28
                    ),
                  ),
                )
            ),

            Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "This is cart view",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28
                    ),
                  ),

                )
            ),
            SizedBox(height: 20,),
            Container(
              height: 240,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60),),
                child: Image.network(
                  'https://images.unsplash.com/photo-1604534458771-25634d6ba272?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDc0fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
