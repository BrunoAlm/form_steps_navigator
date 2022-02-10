import 'package:flutter/material.dart';

class TipoDrawer extends StatelessWidget {
  const TipoDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffff5400),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: TextButton.icon(
            //     onPressed: () => Navigator.pop(context),
            //     icon: const Icon(Icons.arrow_back),
            //     label: const Text('Voltar'),
            //     style: ButtonStyle(
            //         foregroundColor: MaterialStateProperty.all(
            //       Colors.white,
            //     )),
            //   ),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 28,
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
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Image.network(
                      'https://scontent.fpoa1-1.fna.fbcdn.net/v/t1.6435-9/130262561_1037081930088172_5189592638196637405_n.png?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_ohc=qyDibaYw6NUAX-UVdcR&_nc_ht=scontent.fpoa1-1.fna&oh=00_AT9RjOUIXpOcz-prvSVD7OnXQ-Z76RXyfV51VZvx4Z_S2g&oe=6229EBBC',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
