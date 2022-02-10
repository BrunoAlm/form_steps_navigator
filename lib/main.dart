// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:forms_navigator/home_page.dart';
import 'package:forms_navigator/register/register_page.dart';
import 'package:forms_navigator/splash_page.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const SplashPage(),
        '/home': (_) => const HomePage(),
        '/register': (_) => const RegisterPage(),
      },
    );
  }
}
