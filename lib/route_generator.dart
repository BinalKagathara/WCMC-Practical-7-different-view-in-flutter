import 'package:flutter/material.dart';
import 'package:practical7/card_view.dart';
import 'package:practical7/grid_view.dart';
import 'package:practical7/home_page.dart';
import 'package:practical7/list_view.dart';
import 'package:practical7/tabbed_view.dart';
import 'package:practical7/web_view.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings routeSettings){
    final arguments = routeSettings.arguments;
    switch(routeSettings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/list_view':
        return MaterialPageRoute(builder: (_) => ListPage());
      case '/card_view':
        return MaterialPageRoute(builder: (_) => CardPage());
      case '/grid_view':
        return MaterialPageRoute(builder: (_) => GridPage());
      case '/web_view':
        return MaterialPageRoute(builder: (_) => WebPage());
      case '/tabbed_view':
        return MaterialPageRoute(builder: (_) => TabbedPage());

    }
  }
}