import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';

class AuthHeaderLogo extends StatelessWidget {
  const AuthHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Column(
        children: [
          SizedBox(height: 12.h),
          Image.asset(
            AssetsManager.loginAndRegisterLogoImg,
            height: 140.h,
          ),
          SizedBox(height: 8.h),
          Text(
            'App Name',
            style: AppTextStyles.font24YellowW600,
          ),
        ],
      ),
    );
  }
}
