import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practical7/customDrawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabbedPage extends StatefulWidget {

  @override
  _TabbedPageState createState() => _TabbedPageState();
}

class _TabbedPageState extends State<TabbedPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      print("Selected Index: " + _tabController.index.toString());
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabbar View"),
        toolbarHeight: 100,
        bottom: TabBar(
          labelPadding: EdgeInsets.all(10),
          indicatorColor: Colors.black87,
          controller: _tabController,
          tabs: [
            Icon(FontAwesomeIcons.google),
            Icon(FontAwesomeIcons.youtube),
            Icon(FontAwesomeIcons.amazon),

          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          WebView(
            initialUrl: "https://google.com",
            javascriptMode: JavascriptMode.unrestricted,
          ),
          WebView(
            initialUrl: "https://youtube.com",
            javascriptMode: JavascriptMode.unrestricted,
          ),
          WebView(
            initialUrl: "https://amazon.com",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ],
      ),
    );
  }
}
