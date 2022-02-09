import 'package:flutter/material.dart';
import 'package:forms_navigator/register/model/register_model.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final nomeEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nomeEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            Text(
              'Step One',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextFormField(
              controller: nomeEC,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            ElevatedButton(
                onPressed: () {
                  var model = RegisterModel(name: nomeEC.text);
                  Navigator.pushNamed(context, '/two', arguments: model);
                },
                child: const Text('Próximo passo')),
          ],
        ),
      ),
    );
  }
}
