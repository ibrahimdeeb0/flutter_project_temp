import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/widgets/app_form_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassInfoBody extends StatelessWidget {
  const ResetPassInfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 22.h),
        Text(
          'You Need To Confirm Some Information To Set New  Password',
          style: AppTextStyles.font18BlackW500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24.h),
        const AppFormTextField(
          hintText: 'Email',
          labelText: 'Email',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Phone Number',
          labelText: 'Phone Number',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Verification Number',
          labelText: 'Verification Number',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Description Page',
          labelText: 'Description Page',
        ),
        SizedBox(height: 26.h),
        Text(
          'Send Your Data Add To Confirm User After Change Password ',
          style: AppTextStyles.font14BlackW500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 18.h),
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
