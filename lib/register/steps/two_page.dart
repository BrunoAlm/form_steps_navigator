import 'package:flutter/material.dart';
import 'package:forms_navigator/register/model/register_model.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  final emailEC = TextEditingController();
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
    emailEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            Text(
              'Step Two',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextFormField(
              controller: emailEC,
              decoration: const InputDecoration(labelText: 'E-mail'),
            ),
            ElevatedButton(
                onPressed: () {
                  var model = registerModel.copyWith(email: emailEC.text);
                  Navigator.pushNamed(context, '/three', arguments: model);
                },
                child: const Text('Próximo passo')),
          ],
        ),
      ),
    );
  }
}
