import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_loader.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/text_field_component.dart';
import '../../../../core/utils/app_validation_functions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var nameController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UserProfielImage(),
              SizedBox(height: 50.h),
              TextFieldComponent(
                hint: 'Name',
                title: 'Name',
                keyboardType: TextInputType.name,
                controller: nameController,
                validator: (v) =>
                    AppValidationFunctions.stringValidationFunction(v, 'Name'),
              ),
              SizedBox(height: 30.h),
              TextFieldComponent(
                hint: 'Email',
                title: 'Email Address',
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (v) =>
                    AppValidationFunctions.emailValidationFunction(v),
              ),
              SizedBox(height: 50.h),
              AnimatedCrossFade(
                  firstChild: CustomButton(
                      text: 'Edit Profile',
                      color: AppColors.whiteColor,
                      onTap: () {}),
                  secondChild: const CustomLoader(),
                  crossFadeState: false
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 250)),
            ],
          ),
        ),
      ),
    );
  }
}

class UserProfielImage extends StatelessWidget {
  const UserProfielImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Image.asset(
            AppImages.logoImage,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
              radius: 20, child: Icon(Icons.edit, color: Colors.red, size: 30)),
        ),
      ],
    );
  }
}
