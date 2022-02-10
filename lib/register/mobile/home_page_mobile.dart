import 'package:flutter/material.dart';
import 'package:forms_navigator/register/navigator_page.dart';

class HomePageMobile extends StatefulWidget {
  HomePageMobile({Key? key, required this.navKey}) : super(key: key);
  var navKey = GlobalKey<NavigatorState>();

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: TextButton.icon(
          //       onPressed: () => Navigator.pop(context),
          //       icon: const Icon(Icons.arrow_back),
          //       label: const Text('Voltar'),
          //       style: ButtonStyle(
          //           foregroundColor: MaterialStateProperty.all(
          //         Colors.white,
          //       )),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 93.7143,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome Maguila',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                Image.network(
                  'https://scontent.fpoa1-1.fna.fbcdn.net/v/t1.6435-9/130262561_1037081930088172_5189592638196637405_n.png?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=qyDibaYw6NUAX-UVdcR&_nc_ht=scontent.fpoa1-1.fna&oh=00_AT9RjOUIXpOcz-prvSVD7OnXQ-Z76RXyfV51VZvx4Z_S2g&oe=6229EBBC',
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: ((context, animation, secondaryAnimation) {
                      return NavigatorPage(navKey: widget.navKey);
                    }),
                  ),
                );
              },
              child: const Text('Next')),
        ],
      ),
    );
  }
}
