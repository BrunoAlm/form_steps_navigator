import 'package:flutter/material.dart';
import 'package:forms_navigator/register/model/register_model.dart';

class OnePage extends StatefulWidget {
  OnePage({Key? key, required navKey}) : super(key: key);

  final navKey = GlobalKey<NavigatorState>();

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
    return WillPopScope(
      onWillPop: () async {
        var canPopNavRegister = widget.navKey.currentState?.canPop() ?? false;
        if (canPopNavRegister) {
          widget.navKey.currentState?.pop();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What\'s your first name?',
                style: Theme.of(context).textTheme.headline3,
              ),
              TextFormField(
                controller: nomeEC,
                decoration: const InputDecoration(labelText: 'Nome'),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text('Próximo passo'),
                onPressed: () {
                  var model = RegisterModel(name: nomeEC.text);
                  Navigator.pushNamed(context, '/two', arguments: model);
                },
              ),
            ],
          ),
        ),
       
      ),
    );
  }
}
