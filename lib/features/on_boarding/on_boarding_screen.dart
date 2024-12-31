import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/helpers/extensions.dart';
import 'package:flutter_application_temp/core/routes/app_routes.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_application_temp/core/theme/assets_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsManager.onBoardingManImg,
                  height: 260.h,
                ),
                SizedBox(height: 67.h),
                Text(
                  'LogIn or create account to develop your business to the next level.',
                  style: AppTextStyles.font24BlackW700,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 122.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.pushReplacementNamed(
                          AppRoutes.auth,
                          arguments: {
                            'from_sign_in': true,
                            'from_sign_up': false,
                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            const WidgetStatePropertyAll(AppColors.darkRed),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14.r),
                              bottomLeft: Radius.circular(14.r),
                              bottomRight: Radius.zero,
                              topRight: Radius.zero,
                            ),
                          ),
                        ),
                      ),
                      child: Text(
                        'SignIn',
                        style: AppTextStyles.font24MainBlueW500,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.pushReplacementNamed(
                          AppRoutes.auth,
                          arguments: {
                            'from_sign_in': false,
                            'from_sign_up': true,
                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            const WidgetStatePropertyAll(AppColors.lightBlue),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.circular(14.r),
                              topRight: Radius.circular(14.r),
                            ),
                          ),
                        ),
                      ),
                      child: Text(
                        'SignUp',
                        style: AppTextStyles.font24DarkRedW500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
