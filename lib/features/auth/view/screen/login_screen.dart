import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat_app/components/custom_image_handler.dart';
import 'package:chat_app/components/custom_loader.dart';
import 'package:chat_app/core/constants/app_consts.dart';
import 'package:chat_app/core/extension/navigation_extension.dart';
import 'package:chat_app/core/extension/text_extension.dart';
import 'package:chat_app/core/utils/app_images.dart';

import '../../../../components/custom_button.dart';
import '../../../../components/text_field_component.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_validation_functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageHandler(AppImages.onboarding,
                height: height(context) * .6,
                width: width(context),
                fit: BoxFit.fitWidth),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height(context) * .25),
                  Center(
                    child: Text('Welcome back to Chat App',
                        textAlign: TextAlign.center,
                        style: context.f12700!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(height: 30.h),
                  TextFieldComponent(
                    hint: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    validator: (v) =>
                        AppValidationFunctions.emailValidationFunction(v),
                  ),
                  SizedBox(height: 20.h),
                  TextFieldComponent(
                    hint: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    validator: (v) =>
                        AppValidationFunctions.passwordValidationFunction(v),
                  ),
                  SizedBox(height: 40.h),
                  AnimatedCrossFade(
                      firstChild: CustomButton(
                          text: 'login',
                          color: AppColors.whiteColor,
                          onTap: () {}),
                      secondChild: const CustomLoader(),
                      crossFadeState: false
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      duration: const Duration(milliseconds: 250)),
                  SizedBox(height: 16.h),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Didn’t have any account? ',
                          style: context.f14400!
                              .copyWith(color: AppColors.bgGrey)),
                      InkWell(
                        onTap: () =>
                            context.navigateToAndReplacement(AppPages.register),
                        child: Text('Sign Up',
                            style: context.f14400!
                                .copyWith(color: AppColors.primaryColor)),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
