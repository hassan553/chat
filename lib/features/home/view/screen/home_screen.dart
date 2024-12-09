import 'package:chat_app/components/custom_image_handler.dart';
import 'package:chat_app/core/extension/navigation_extension.dart';
import 'package:chat_app/core/utils/app_images.dart';
import 'package:chat_app/features/home/view/widgets/chat_item_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_pages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => context.navigateToPage(AppPages.profile),
                  child: ClipOval(
                    child: CustomImageHandler(
                      'assets/images/logo.png',
                      width: 50.w,
                      height: 50.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(),
                const CustomImageHandler(
                  AppImages.logoImage,
                  width: 50,
                  height: 50,
                ),
                const Spacer(),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () =>
                            context.navigateToPage(AppPages.chatDetails),
                        child: const ChatItemListWidget()),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 15),
                    itemCount: 10))
          ],
        ),
      )),
    );
  }
}
