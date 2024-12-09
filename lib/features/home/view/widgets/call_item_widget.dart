import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallItemWidget extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const CallItemWidget({
    super.key,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.offWhite,
          border: Border.all(color: AppColors.bgGrey),
        ),
        child: Icon(
          icon,
          color: Colors.blue,
          size: 28.sp,
        ),
      ),
    );
  }
}
