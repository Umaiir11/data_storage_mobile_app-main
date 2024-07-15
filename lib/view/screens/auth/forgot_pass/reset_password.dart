import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/auth/forgot_pass/password_changed.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: logoAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: AppSizes.DEFAULT,
              children: [
                MyText(
                  text: 'Reset Password',
                  size: 20,
                  weight: FontWeight.w600,
                  textAlign: TextAlign.center,
                  paddingBottom: 10,
                ),
                MyText(
                  text:
                      'Enter your new password and remember not\nto share your password with any one.',
                  size: 12,
                  textAlign: TextAlign.center,
                  paddingBottom: 40,
                  lineHeight: 1.5,
                  color: kHintColor,
                ),
                MyTextField(
                  label: 'Password',
                  hint: 'Enter your password',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesKey,
                        height: 16,
                      ),
                    ],
                  ),
                ),
                MyTextField(
                  label: 'Confirm Password',
                  hint: 'Enter your password',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesKey,
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Reset Password',
              onTap: () {
                Get.to(() => PasswordChanged());
              },
            ),
          ),
        ],
      ),
    );
  }
}
