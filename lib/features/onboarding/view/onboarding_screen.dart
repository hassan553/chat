import 'package:chat_app/components/custom_image_handler.dart';
import 'package:chat_app/core/extension/text_extension.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_images.dart';
import 'package:chat_app/features/onboarding/widget/sign_up_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(flex: 2),
            CustomImageHandler(
              AppImages.logoImage,
              height: 190.h,
              width: 190.w,
              fit: BoxFit.fill,
            ),
            const Spacer(),
            SignUpOptionWidget(
              title: 'Sign Up with Google',
              image: AppImages.googleImage,
              onTap: () {},
            ),
            SizedBox(height: 15.h),
            SignUpOptionWidget(
              title: 'Sign Up with Facebook',
              image: AppImages.facebookImage,
              onTap: () {},
            ),
            SizedBox(height: 15.h),
            SignUpOptionWidget(
              title: 'Sign Up with Email',
              image: AppImages.emailImage,
              onTap: () {},
            ),
            SizedBox(height: 50.h),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?', style: context.f20400),
                  Text('Sign In',
                      style: context.f20400!
                          .copyWith(color: AppColors.primaryColor)),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
