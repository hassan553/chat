import 'package:chat_app/features/onboarding/view/onboarding_screen.dart';
import 'package:flutter/material.dart';

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
  AppPages.onboarding: (context) => const OnboardingScreen(),
};
