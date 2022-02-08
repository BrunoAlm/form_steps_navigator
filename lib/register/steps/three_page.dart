import 'package:flutter/material.dart';
import 'package:forms_navigator/register/model/register_model.dart';

class ThreePage extends StatefulWidget {
  const ThreePage({Key? key}) : super(key: key);

  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  final siteEC = TextEditingController();
  late RegisterModel registerModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      registerModel =
          ModalRoute.of(context)?.settings.arguments as RegisterModel;
    });
  }

  @override
  void dispose() {
    super.dispose();
    siteEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Step Three',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextFormField(
              controller: siteEC,
              decoration: const InputDecoration(labelText: 'Site'),
            ),
            ElevatedButton(
                onPressed: () {
                  var model = registerModel.copyWith(site: siteEC.text);
                  print(model);
                },
                child: const Text('Cadastrar')),
          ],
        ),
      ),
    );
  }
}
