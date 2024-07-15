import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/subscription/subscription.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              Assets.imagesAccountCreated,
              height: 134,
            ),
          ),
          MyText(
            text: 'Account Created',
            size: 24,
            weight: FontWeight.bold,
            textAlign: TextAlign.center,
            paddingBottom: 15,
          ),
          MyText(
            text: 'Your account has been created\nsuccessfully',
            size: 16,
            lineHeight: 1.5,
            color: kHintColor,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Take me Home',
              onTap: () {
                Get.to(() => Subscription());
              },
            ),
          ),
        ],
      ),
    );
  }
}
