import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Help',
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
                  text: 'Cloud Storage’s Help Center',
                  size: 14,
                  weight: FontWeight.w600,
                  paddingBottom: 8,
                ),
                MyText(
                  text:
                      'Welcome to Cloud Storage. Explore the world of seamless social interaction, educational pursuits, and event discovery with the Cloud Storage. Whether you\'re new to the platform or looking to maximize your experience, our Help Center is your go-to resource for guidance and solutions. Discover how to create compelling posts, share engaging courses, and stay updated on exciting events. Our comprehensive guides and step-by-step tutorials are designed to empower you in making the most of every feature Marchè Social has to offer. If you ever find yourself with questions, we\'re here to help – simply navigate through the sections below to find the answers you need. Let\'s make your Marchè Social  experience extraordinary!',
                  size: 14,
                  color: kHintColor,
                  lineHeight: 1.8,
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              bgColor: kTertiaryColor,
              textColor: kPrimaryColor,
              buttonText: 'Contact Support',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
