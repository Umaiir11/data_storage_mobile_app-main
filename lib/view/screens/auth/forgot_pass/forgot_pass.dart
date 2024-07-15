import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/auth/forgot_pass/verify_f_email.dart';
import 'package:data_storage_mobile_app/view/screens/auth/register/verify_email.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
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
                  text: 'Forgot Password',
                  size: 20,
                  weight: FontWeight.w600,
                  textAlign: TextAlign.center,
                  paddingBottom: 10,
                ),
                MyText(
                  text:
                      'Its Fine to forget password, Don’t worry we will help you recover your password. Enter your registered email so that we can verify your email',
                  size: 12,
                  textAlign: TextAlign.center,
                  paddingBottom: 40,
                  lineHeight: 1.5,
                  color: kHintColor,
                ),
                MyTextField(
                  label: 'Email',
                  hint: 'Enter your email',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesMail,
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
              buttonText: 'Send OTP',
              onTap: () {
                Get.to(() => VerifyFEmail());
              },
            ),
          ),
        ],
      ),
    );
  }
}
