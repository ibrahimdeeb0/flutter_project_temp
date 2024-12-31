import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SystemFailedConfirmData extends StatelessWidget {
  const SystemFailedConfirmData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'System Failed Confirm You Data You Can\'t Change Password',
          style: AppTextStyles.font18BlackW500,
          textAlign: TextAlign.center,
        ),
        Image.asset(
          AssetsManager.systemFailedConfirmDataImg,
          height: 200.h,
          width: 200.w,
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.mainBlue),
          ),
          child: Text(
            'Back',
            style: AppTextStyles.font18WightW500,
          ),
        ),
      ],
    );
  }
}
