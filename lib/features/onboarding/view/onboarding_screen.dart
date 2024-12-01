import 'package:chat_app/core/constants/app_consts.dart';
import 'package:chat_app/features/onboarding/widget/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(width(context));
        },
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const OnboardingBody(),
    );
  }
}
