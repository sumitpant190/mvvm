import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import '../../view/home_screen.dart';
import '../../view/login_view.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginView());
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
