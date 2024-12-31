import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/widgets/app_form_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordBodyData extends StatelessWidget {
  const ResetPasswordBodyData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'You Need To Confirm Some Information To Set New  Password',
          style: AppTextStyles.font18BlackW500,
          textAlign: TextAlign.center,
        ),
        Column(
          children: [
            const AppFormTextField(
              hintText: 'Password',
              labelText: 'Password',
            ),
            SizedBox(height: 26.h),
            const AppFormTextField(
              hintText: 'Confirm Password',
              labelText: 'Confirm Password',
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.mainBlue),
          ),
          child: Text(
            'Send',
            style: AppTextStyles.font18WightW500,
          ),
        ),
      ],
    );
  }
}
