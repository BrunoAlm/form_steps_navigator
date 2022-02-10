import 'package:flutter/material.dart';

import 'steps/one_page.dart';
import 'steps/three_page.dart';
import 'steps/two_page.dart';

class NavigatorPage extends StatefulWidget {
  NavigatorPage({Key? key, required this.navKey}) : super(key: key);
  var navKey = GlobalKey<NavigatorState>();
  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navKey,
      // initialRoute: '/one',
      onGenerateRoute: (settings) {
        var route = settings.name;
        Widget page = OnePage();
        switch (route) {
          case '/one':
            page = OnePage();
            break;
          case '/two':
            page = const TwoPage();
            break;
          case '/three':
            page = const ThreePage();
            break;
          default:
            null;
        }
        return MaterialPageRoute(
            builder: (context) => page, settings: settings);
      },
    );
  }
}
