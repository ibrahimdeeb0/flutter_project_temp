import 'package:flutter/material.dart';
import 'package:flutter_application_temp/core/helpers/extensions.dart';
import 'package:flutter_application_temp/core/theme/app_colors.dart';
import 'package:flutter_application_temp/core/theme/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/auth_header_logo.dart';
import 'widgets/login_tab.dart';
import 'widgets/register_tab.dart';

class AuthScreen extends StatefulWidget {
  final Map<String, dynamic> arguments;
  const AuthScreen({super.key, required this.arguments});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  bool isRegister = false;

  void onToggleSelectedTab(int index) {
    if (index == 0) {
      isLogin = true;
      isRegister = false;
    } else {
      isLogin = false;
      isRegister = true;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    widget.arguments['from_sign_in']
        ? onToggleSelectedTab(0)
        : onToggleSelectedTab(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: SafeArea(
        child: Stack(
          children: [
            const AuthHeaderLogo(),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.only(top: 12.h),
                width: double.infinity,
                height: 626.h,
                clipBehavior: Clip.hardEdge,
                decoration: ShapeDecoration(
                  color: AppColors.lightGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(26.0.r),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: context.flexWidth() * 0.5,
                          height: 70.h,
                          child: ElevatedButton(
                            onPressed: () {
                              onToggleSelectedTab(0);
                            },
                            style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                ),
                              ),
                            ),
                            child: Text(
                              'SignIn',
                              style: AppTextStyles.font24MainBlueW500.copyWith(
                                color: isLogin
                                    ? AppColors.darkYellow
                                    : AppColors.mainBlue,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.flexWidth() * 0.5,
                          height: 70.h,
                          child: ElevatedButton(
                            onPressed: () {
                              onToggleSelectedTab(1);
                            },
                            style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.zero),
                                ),
                              ),
                            ),
                            child: Text(
                              'SignUp',
                              style: AppTextStyles.font24MainBlueW500.copyWith(
                                color: isRegister
                                    ? AppColors.darkYellow
                                    : AppColors.mainBlue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.w),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 20.h),
                              AnimatedSwitcher(
                                duration: Durations.medium2,
                                child: isLogin
                                    ? const LoginTab()
                                    : const RegisterTab(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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

class AuthButtons extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const AuthButtons({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: 70.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.font24MainBlueW500.copyWith(
            color: isSelected
                ? AppColors.darkYellow
                : AppColors.mainBlue, // Dynamic text color
          ),
        ),
      ),
    );
  }
}
