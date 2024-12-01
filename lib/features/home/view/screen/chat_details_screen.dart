import 'package:chat_app/components/custom_image_handler.dart';
import 'package:chat_app/core/extension/text_extension.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_images.dart';
import 'package:chat_app/features/home/view/widgets/call_item_widget.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ClipOval(
                    child: CustomImageHandler(
                      'assets/images/logo.png',
                      width: 50.w,
                      height: 50.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User Name',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.f15600,
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'Last message',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.f12500!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CallItemWidget(
                    icon: Icons.call,
                    onTap: () {},
                  ),
                  SizedBox(width: 5.w),
                  CallItemWidget(
                    icon: Icons.video_call_sharp,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const Divider(thickness: 5, color: Color(0xffF3FAFA)),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return BubbleSpecialThree(
                      isSender: index % 2 == 0,
                      text: 'Added iMessage shape bubbles',
                      color: const Color(0xFF1B97F3),
                      tail: true,
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 16),
                    );
                  } else {
                    return BubbleNormalImage(
                      id: 'id001',
                      isSender: index % 2 == 0,
                      image: const CustomImageHandler(AppImages.logoImage),
                      color: const Color(0xFF1B97F3),
                      tail: true,
                      delivered: true,
                    );
                  }
                },
                itemCount: 10,
              ),
            ),
            MessageBar(
              messageBarColor: AppColors.offWhite,
              onSend: (_) => print(_),
              actions: [
                InkWell(
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.green,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
