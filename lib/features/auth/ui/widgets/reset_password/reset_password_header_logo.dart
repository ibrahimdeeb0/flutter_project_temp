import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_application_temp/core/helpers/extensions.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';

class ResetPasswordHeaderLogo extends StatelessWidget {
  const ResetPasswordHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.w, 40.h, 20.h, 30.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            Image.asset(
              AssetsManager.authResetPassImg,
              width: 80.h,
            ),
            SizedBox(width: 8.0.w),
            SizedBox(
              width: context.flexWidth() * 0.6,
              child: Text(
                'Welcome to  password reset system',
                style: AppTextStyles.font24YellowW600.copyWith(
                  fontSize: 22.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
