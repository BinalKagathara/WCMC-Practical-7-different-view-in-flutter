import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        children: [
          Container(
            height: 140,
            child: DrawerHeader(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Drawer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
          ),
          SizedBox(height: 30,),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text('Home Page'),
            onTap: () {
              Navigator.of(context).pushNamed("/");
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.list_bullet),
            title: Text('ListView , ScrollView'),
            onTap: () {
              Navigator.of(context).pushNamed("/list_view");
            },
          ),

          ListTile(
            leading: Icon(Icons.view_column_outlined),
            title: Text('Tabbed View'),
            onTap: () {
              Navigator.of(context).pushNamed("/tabbed_view");
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.square),
            title: Text('Card View'),
            onTap: () {
              Navigator.of(context).pushNamed("/card_view");
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.rectangle_grid_2x2),
            title: Text('Grid View'),
            onTap: () {
              Navigator.of(context).pushNamed("/grid_view");
            },
          ),
          ListTile(
            leading: Icon(Icons.web_asset_outlined,size: 28),
            title: Text('Web View'),
            onTap: () {
              Navigator.of(context).pushNamed("/web_view");
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.square_arrow_left,size: 28),
            title: Text('Exit'),
            onTap: () {
              exit(0);
            },
          )
        ],
      ),
    );
  }
}
