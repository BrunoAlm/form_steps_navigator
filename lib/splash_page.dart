import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: [
          Image.network(
            'https://scontent.fpoa1-1.fna.fbcdn.net/v/t1.6435-9/130262561_1037081930088172_5189592638196637405_n.png?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=qyDibaYw6NUAX-UVdcR&_nc_ht=scontent.fpoa1-1.fna&oh=00_AT9RjOUIXpOcz-prvSVD7OnXQ-Z76RXyfV51VZvx4Z_S2g&oe=6229EBBC',
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: const Text('Home Page'),
          ),
        ],
      ),
    );
  }
}
