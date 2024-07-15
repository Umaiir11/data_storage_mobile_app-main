import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/main.dart';
import 'package:data_storage_mobile_app/view/screens/profile/delete_account.dart';
import 'package:data_storage_mobile_app/view/screens/profile/faq.dart';
import 'package:data_storage_mobile_app/view/screens/profile/help.dart';
import 'package:data_storage_mobile_app/view/screens/profile/languages.dart';
import 'package:data_storage_mobile_app/view/screens/profile/my_profile.dart';
import 'package:data_storage_mobile_app/view/screens/profile/security/security.dart';
import 'package:data_storage_mobile_app/view/screens/profile/terms_and_privacy/privacy.dart';
import 'package:data_storage_mobile_app/view/screens/profile/terms_and_privacy/terms.dart';
import 'package:data_storage_mobile_app/view/screens/subscription/payment_methods.dart';
import 'package:data_storage_mobile_app/view/widget/common_image_view_widget.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../widget/profile_tile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Profile',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppSizes.VERTICAL,
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: AppSizes.HORIZONTAL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1.0,
                      color: kQuaternaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Get.to(() => MyProfile()),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: kQuaternaryColor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    CommonImageView(
                                      height: 68,
                                      width: 68,
                                      radius: 100.0,
                                      url: dummyImg,
                                    ),
                                  ],
                                ),
                                MyText(
                                  paddingTop: 12,
                                  text: 'Luqman Sardar',
                                  size: 12,
                                  weight: FontWeight.bold,
                                  paddingBottom: 8,
                                ),
                                MyText(
                                  text: 'luqmansardar8742gmail.com',
                                  size: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: kQuaternaryColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CircularPercentIndicator(
                                radius: 56.0,
                                lineWidth: 15.0,
                                percent: 0.25,
                                center: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyText(
                                      text: '20.2 GB',
                                      size: 18,
                                      weight: FontWeight.bold,
                                      paddingBottom: 2,
                                    ),
                                    MyText(
                                      text: '/ 100 GB',
                                      size: 12,
                                      weight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                progressColor: kSecondaryColor,
                                backgroundColor: kTertiaryColor,
                                circularStrokeCap: CircularStrokeCap.round,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kQuaternaryColor,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            MyText(
                              text: 'Your Plan',
                              size: 10,
                              paddingBottom: 4,
                            ),
                            Row(
                              children: [
                                MyText(
                                  text: 'Your Plan',
                                  size: 20,
                                  weight: FontWeight.bold,
                                ),
                                MyText(
                                  text: '100 GB',
                                  size: 10,
                                ),
                              ],
                            ),
                            MyText(
                              paddingTop: 4,
                              text: '\$9.99/m',
                              size: 10,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: MyButton(
                          height: 40,
                          radius: 5,
                          textSize: 12,
                          weight: FontWeight.w400,
                          buttonText: 'Upgrade',
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.imagesShare,
                          height: 24,
                        ),
                        MyText(
                          paddingTop: 12,
                          text: 'Shared Files',
                          size: 12,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.imagesDelete,
                          height: 24,
                        ),
                        MyText(
                          paddingTop: 12,
                          text: 'Recycle Bin',
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ProfileTile(
            icon: Assets.imagesLanguage,
            title: 'Language',
            onTap: () {
              Get.to(() => Languages());
            },
          ),
          ProfileTile(
            icon: Assets.imagesPaymentMethods,
            title: 'Payment Methods',
            onTap: () {
              Get.to(() => PaymentMethods());
            },
          ),
          ProfileTile(
            icon: Assets.imagesSecurity,
            title: 'Security',
            onTap: () {
              Get.to(() => Security());
            },
          ),
          ProfileTile(
            icon: Assets.imagesTerms,
            title: 'Terms & Conditions',
            onTap: () {
              Get.to(() => Terms());
            },
          ),
          ProfileTile(
            icon: Assets.imagesPrivacy,
            title: 'Privacy Policy',
            onTap: () {
              Get.to(() => Privacy());
            },
          ),
          ProfileTile(
            icon: Assets.imagesFaq,
            title: 'FAQs',
            onTap: () {
              Get.to(() => Faq());
            },
          ),
          ProfileTile(
            icon: Assets.imagesHelp,
            title: 'Help',
            onTap: () {
              Get.to(() => Help());
            },
          ),
          ProfileTile(
            icon: Assets.imagesDelete,
            title: 'Delete Account',
            onTap: () {
              Get.to(() => DeleteAccount());
            },
          ),
          ProfileTile(
            icon: Assets.imagesLogout,
            title: 'Log Out',
            isRed: true,
            onTap: () {
              Get.dialog(_LogoutDialog());
            },
          ),
        ],
      ),
    );
  }
}

class _LogoutDialog extends StatelessWidget {
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
                  text: 'Are you sure you want to Log Out from your account?',
                  size: 14,
                  weight: FontWeight.w600,
                  paddingBottom: 16,
                ),
                MyText(
                  paddingTop: 4,
                  textAlign: TextAlign.center,
                  text: 'You can login any time',
                  color: kHintColor,
                  size: 12,
                  paddingBottom: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        bgColor: kPrimaryColor,
                        textColor: kTertiaryColor,
                        buttonText: 'Cancel',
                        textSize: 14,
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
                        bgColor: kRedColor,
                        textSize: 14,
                        buttonText: 'Log Out',
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
