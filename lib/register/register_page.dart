import 'package:flutter/material.dart';
import 'package:forms_navigator/register/desktop/tipoDrawer.dart';
import 'package:forms_navigator/register/mobile/home_page_mobile.dart';
import 'package:forms_navigator/register/navigator_page.dart';
import 'package:forms_navigator/register/steps/one_page.dart';
import 'package:forms_navigator/register/steps/three_page.dart';
import 'package:forms_navigator/register/steps/two_page.dart';
import 'package:forms_navigator/services/breakpoint.dart';

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
      child: LayoutBuilder(builder: (_, constraints) {
        return Scaffold(
          backgroundColor: const Color(0xffff5400),
          body: constraints.maxWidth > mobileBreakpoint
              ? Row(
                  children: [
                    const TipoDrawer(),
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 196, 196, 196),
                        child: NavigatorPage(navKey: navKey),
                      ),
                    ),
                  ],
                )
              : Container(
                  color: const Color(0xffff550a),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: HomePageMobile(navKey: navKey),
                  ),
                ),
        );
      }),
    );
  }
}
