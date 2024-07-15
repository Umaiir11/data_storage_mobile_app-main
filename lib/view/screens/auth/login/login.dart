import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/auth/forgot_pass/forgot_pass.dart';
import 'package:data_storage_mobile_app/view/screens/auth/register/register.dart';
import 'package:data_storage_mobile_app/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:data_storage_mobile_app/view/widget/custom_check_box.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset(
                Assets.imagesArrowBackRounded,
                height: 29,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: AppSizes.HORIZONTAL,
        children: [
          Image.asset(
            Assets.imagesLogo,
            height: 41,
          ),
          MyText(
            paddingTop: 30,
            text: 'Enter your credentials to continue',
            size: 16,
            weight: FontWeight.w600,
            textAlign: TextAlign.center,
            paddingBottom: 40,
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
          MyTextField(
            marginBottom: 12,
            isObSecure: true,
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
          Row(
            children: [
              CustomCheckBox(
                isActive: true,
                onTap: () {},
              ),
              Expanded(
                child: MyText(
                  paddingLeft: 4,
                  text: 'Remember Me',
                  size: 12,
                  weight: FontWeight.w600,
                ),
              ),
              MyText(
                onTap: () => Get.to(() => ForgotPassword()),
                text: 'Forgot Password?',
                size: 12,
                color: kSecondaryColor,
                weight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          MyButton(
            buttonText: 'Login',
            onTap: () {
              Get.to(() => BottomNavBar());
            },
          ),
          SizedBox(
            height: 20,
          ),
          MyBorderButton(
            buttonText: '',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesGoogle,
                  height: 24,
                ),
                MyText(
                  paddingLeft: 12,
                  text: 'Continue with Google',
                  size: 16,
                  weight: FontWeight.w600,
                ),
              ],
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: 'Don’t Have Account? ',
                size: 12,
              ),
              MyText(
                onTap: () {
                  Get.to(() => Register());
                },
                text: 'Register',
                size: 12,
                color: kSecondaryColor,
                weight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
