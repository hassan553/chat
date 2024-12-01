import 'package:chat_app/components/custom_image_handler.dart';
import 'package:chat_app/core/constants/app_consts.dart';
import 'package:chat_app/core/extension/text_extension.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpOptionWidget extends StatelessWidget {
  final String title;
  final String image;
  final void Function()? onTap;
  const SignUpOptionWidget({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: isTablet(context)
            ? MediaQuery.sizeOf(context).width * .4
            : double.infinity,
        height: width(context) > 600 ? 90.h : 60.h,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.bgGrey),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(95, 87, 87, 0.4699999988079071),
                offset: Offset(1, 1),
                blurRadius: 1)
          ],
          color: AppColors.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageHandler(
              image,
              height: 30.h,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                title,
                style: context.f18400!.copyWith(color: AppColors.primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
