import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Delete Account',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: AppSizes.DEFAULT,
              physics: BouncingScrollPhysics(),
              children: [
                MyText(
                  text:
                      'Please state your reason for leaving us. Your Feedback help us to improve ourselves.',
                  size: 12,
                  lineHeight: 1.6,
                  weight: FontWeight.w500,
                  paddingBottom: 12,
                ),
                MyTextField(
                  maxLines: 8,
                  hint: 'Write your message',
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Delete',
              onTap: () {
                Get.dialog(
                  _DeleteDialog(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DeleteDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Material(
          color: Colors.transparent,
          child: Container(
            margin: AppSizes.DEFAULT,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kQuaternaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingTop: 4,
                  textAlign: TextAlign.center,
                  text: 'Are you sure you want to Delete you account?',
                  size: 14,
                  weight: FontWeight.w600,
                  paddingBottom: 16,
                ),
                MyText(
                  paddingTop: 4,
                  textAlign: TextAlign.center,
                  text:
                      'If you delete your account you will not be able to retrieve your data again.',
                  size: 12,
                  color: kHintColor,
                  paddingBottom: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        textSize: 14,
                        bgColor: kPrimaryColor,
                        textColor: kTertiaryColor,
                        buttonText: 'Cancel',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MyButton(
                        textSize: 14,
                        bgColor: kRedColor,
                        buttonText: 'Delete',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
