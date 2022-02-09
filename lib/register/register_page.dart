import 'package:flutter/material.dart';
import 'package:forms_navigator/register/steps/one_page.dart';
import 'package:forms_navigator/register/steps/three_page.dart';
import 'package:forms_navigator/register/steps/two_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPopNavRegister = navKey.currentState?.canPop() ?? false;
        if (canPopNavRegister) {
          navKey.currentState?.pop();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro'),
        ),
        body: Navigator(
          key: navKey,
          initialRoute: '/one',
          onGenerateRoute: (settings) {
            var route = settings.name;
            Widget page = const OnePage();
            switch (route) {
              case '/one':
                page = const OnePage();
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
        ),
      ),
    );
  }
}
