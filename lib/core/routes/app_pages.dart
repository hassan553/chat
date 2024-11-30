import 'package:flutter/material.dart';

import '../../features/auth/view/screen/login_screen.dart';
import '../../features/auth/view/screen/register_screen.dart';

class AppPages {
  static const onboarding = '/';
  static const register = '/register';
  static const login = '/login';
  static const loadingPage = '/loadingPage';
  static const home = '/home';
  static const profile = '/profile';
  static const addTask = '/addTask';
  static const taskDetails = '/taskDetails';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppPages.register: (context) => const RegisterScreen(),

};
