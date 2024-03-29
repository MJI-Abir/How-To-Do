import 'package:flutter/material.dart';
import 'package:how_to_do/core/app_export.dart';
import 'package:how_to_do/widgets/custom_elevated_button.dart';
import 'package:how_to_do/widgets/custom_icon_button.dart';

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 39.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgArrowLeft),
                ),
              ),
              SizedBox(height: 41.v),
              _buildPageHeader(context),
              SizedBox(height: 30.v),
              CustomImageView(
                  imagePath: ImageConstant.imgLogoGray5001,
                  height: 105.v,
                  width: 117.h),
              SizedBox(height: 33.v),
              Text("Get in through", style: theme.textTheme.titleMedium),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                  text: "Sign Up",
                  onPressed: () {
                    onTapSignUp(context);
                  }),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                text: "Login",
                buttonStyle: CustomButtonStyles.fillDeepOrange,
                buttonTextStyle: CustomTextStyles.titleSmallSecondaryContainer,
                onPressed: () {
                  onTapLogin(context);
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 208.h,
          child: Text(
            "Welcome to our community",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.displaySmall!.copyWith(height: 1.18),
          ),
        ),
        SizedBox(height: 2.v),
        Container(
          width: 281.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text(
            "our community is ready to help you to join our best platform",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(height: 1.67),
          ),
        ),
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
