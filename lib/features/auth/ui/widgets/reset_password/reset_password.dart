import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'reset_password_header_logo.dart';
import 'reset_password_info_body.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: SafeArea(
        child: Stack(
          children: [
            const ResetPasswordHeaderLogo(),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                width: double.infinity,
                height: 660.h,
                clipBehavior: Clip.hardEdge,
                decoration: ShapeDecoration(
                  color: AppColors.lightGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(26.0.r),
                    ),
                  ),
                ),
                child: const ResetPassInfoBody(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 36.h,
        color: AppColors.lightGrey,
      ),
    );
  }
}
