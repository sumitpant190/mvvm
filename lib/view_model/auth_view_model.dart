import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/repositories/auth_repository.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool _signUpLoading = false;
  bool get signUpLoading => _isLoading;

  void setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.loginApi(data).then((value) {
      setLoading(false);
      Navigator.pushNamed(context, RoutesName.home);
      Utils.flushBarErrorMessage('Login Successfully', context);

      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);

      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myRepo.registerApi(data).then((value) {
      setSignUpLoading(false);
      Navigator.pushNamed(context, RoutesName.login);
      Utils.flushBarErrorMessage('SignUp Successfully', context);

      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);

      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
