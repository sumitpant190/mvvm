import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/signup_view.dart';
import 'package:mvvm/view/spash_view.dart';
import '../../view/home_screen.dart';
import '../../view/login_view.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.spalsh:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginView());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => SignUpView());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No defined route'),
            ),
          );
        });
    }
  }
}
