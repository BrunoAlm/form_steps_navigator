import 'package:flutter/material.dart';
import 'package:forms_navigator/register/register_page.dart';
import 'package:forms_navigator/services/breakpoint.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool formulando = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      body: LayoutBuilder(builder: (_, constraints) {
        return constraints.maxWidth > mobileBreakpoint
            ? Row(
                children: [
                  Container(
                    color: const Color(0xffff550a),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: TextButton.icon(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back),
                              label: const Text('Voltar'),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(
                                Colors.white,
                              )),
                            ),
                          ),
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
                                  constraints:
                                      const BoxConstraints(maxWidth: 300),
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
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 196, 196, 196),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          LayoutBuilder(builder: (_, __) {
                            return formulando
                                ? Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Step One',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        ),
                                        TextFormField(
                                          decoration: const InputDecoration(
                                              labelText: 'Nome'),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: const Text('Próximo passo')),
                                      ],
                                    ),
                                  )
                                : ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        formulando = !formulando;
                                      });
                                      // Navigator.pushNamed(context, '/register');
                                    },
                                    child: const Text('Formular'),
                                  );
                          }),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     setState(() {
                          //       formulando = true;
                          //     });
                          //     // Navigator.pushNamed(context, '/register');
                          //   },
                          //   child: const Text('Formular'),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Expanded(
                child: Container(
                  color: Color.fromARGB(255, 196, 196, 196),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LayoutBuilder(builder: (_, __) {
                        return formulando
                            ? Center(
                                child: Column(
                                  children: [
                                    Text(
                                      'Step One',
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          labelText: 'Nome'),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Próximo passo')),
                                  ],
                                ),
                              )
                            : ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    formulando = !formulando;
                                  });
                                  // Navigator.pushNamed(context, '/register');
                                },
                                child: const Text('Formular'),
                              );
                      }),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       formulando = true;
                      //     });
                      //     // Navigator.pushNamed(context, '/register');
                      //   },
                      //   child: const Text('Formular'),
                      // ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
