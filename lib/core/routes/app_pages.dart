import 'package:chat_app/features/auth/view/screen/login_screen.dart';
import 'package:chat_app/features/auth/view/screen/register_screen.dart';
import 'package:chat_app/features/home/view/screen/chat_details_screen.dart';
import 'package:chat_app/features/home/view/screen/home_screen.dart';
import 'package:chat_app/features/onboarding/view/onboarding_screen.dart';
import 'package:chat_app/features/profile/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class AppPages {
  static const onboarding = '/';
  static const register = '/register';
  static const login = '/login';
  static const loadingPage = '/loadingPage';
  static const home = '/home';
  static const profile = '/profile';
  static const addTask = '/addTask';
  static const chatDetails = '/chatDetails';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppPages.onboarding: (context) => const OnboardingScreen(),
  AppPages.login: (context) => const LoginScreen(),
  AppPages.register: (context) => const RegisterScreen(),
  AppPages.home: (context) => const HomeScreen(),
  AppPages.chatDetails: (context) => const ChatDetailsScreen(),
  AppPages.profile: (context) => const ProfileScreen(),
};
