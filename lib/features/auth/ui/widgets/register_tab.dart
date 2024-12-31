import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/widgets/app_form_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterTab extends StatelessWidget {
  const RegisterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppFormTextField(
          hintText: 'User Name',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Email',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Password',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Confirm Password',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Phone Number',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Location',
        ),
        SizedBox(height: 26.h),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.mainBlue),
          ),
          child: Text(
            'SignUp',
            style: AppTextStyles.font18WightW500,
          ),
        ),
      ],
    );
  }
}
