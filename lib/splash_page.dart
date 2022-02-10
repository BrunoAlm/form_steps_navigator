import 'package:flutter/material.dart';
import 'package:forms_navigator/register/register_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() async {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const RegisterPage()));
    });
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    // var largura = MediaQuery.of(context).size.width;
    return const Material(
        color: Color(0xffff5400),
        child: Center(
            child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 8,
        )));
    // Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Splash'),
    //     ),
    //     body: Center(
    //       child: ElevatedButton(
    //         onPressed: () {
    //           Navigator.pushNamed(context, '/register');
    //         },
    //         child: const Text('Splash page'),
    //       ),
    //     ));
  }
}
