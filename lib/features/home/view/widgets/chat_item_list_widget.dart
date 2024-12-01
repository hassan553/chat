import 'package:chat_app/core/extension/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatItemListWidget extends StatelessWidget {
  final void Function()? onTab;
  const ChatItemListWidget({super.key, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
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
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey.shade400,
            size: 20.sp,
          ),
        ],
      ),
    );
  }
}
