import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/helpers/extensions.dart';
import 'package:flutter_application_temp/core/routes/app_routes.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';
import 'package:flutter_application_temp/core/widgets/app_form_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppFormTextField(
          hintText: 'Email',
        ),
        SizedBox(height: 26.h),
        const AppFormTextField(
          hintText: 'Password',
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Show Password',
            ),
            SizedBox(width: 6.w),
            const Icon(Icons.check_box_outline_blank),
          ],
        ),
        SizedBox(height: 8.h),
        TextButton(
          onPressed: () {
            context.pushNamed(AppRoutes.resetPassword);
          },
          child: Text(
            'Forget Password ? Click To Get Help',
            style: AppTextStyles.font18BlackW500,
          ),
        ),
        SizedBox(height: 8.h),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.mainBlue),
          ),
          child: Text(
            'SignIn',
            style: AppTextStyles.font18WightW500,
          ),
        ),
        SizedBox(height: 18.h),
        Text(
          'OR',
          style: AppTextStyles.font18BlackW700,
        ),
        Divider(
          thickness: 2,
          indent: 60.w,
          endIndent: 60.w,
        ),
        SizedBox(height: 12.0.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(
              color: Colors.grey,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In Use Google',
                style: AppTextStyles.font18BlackW500,
              ),
              SizedBox(width: 12.0.w),
              Image.asset(AssetsManager.googleImg),
            ],
          ),
        ),
        SizedBox(height: 18.0.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(
              color: Colors.grey,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In Use Facebook',
                style: AppTextStyles.font18BlackW500,
              ),
              SizedBox(width: 12.0.w),
              Image.asset(AssetsManager.facebookImg),
            ],
          ),
        ),
      ],
    );
  }
}
