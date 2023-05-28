import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: InkWell(
            onTap: () {
              // Navigator.pushNamed(context, RoutesName.home);
              Utils.toastMessage('Login');
              Utils.flushBarErrorMessage('message', context);
            },
            child: Center(
                child: Text(
              'Hello world',
              style: TextStyle(fontSize: 20),
            )),
          ),
        )
      ]),
    );
  }
}
