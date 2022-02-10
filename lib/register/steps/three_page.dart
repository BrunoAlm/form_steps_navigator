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
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ta ficando doido',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextFormField(
              controller: siteEC,
              decoration: const InputDecoration(labelText: 'Site'),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Passo Anterior')),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      var model = registerModel.copyWith(site: siteEC.text);
                      var modelMap = model.toMap();
                      print(modelMap);
                    },
                    child: const Text('Cadastrar')),
              ],
            ),
            // const Spacer(),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pushNamed('/');
                },
                child: const Text('Recomeçar')),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
