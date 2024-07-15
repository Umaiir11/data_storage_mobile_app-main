import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/view/screens/launch/get_started.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 2,
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              Assets.imagesLogo,
              height: 60,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          GestureDetector(
            onTap: () => Get.to(() => GetStarted()),
            child: Image.asset(
              Assets.imagesArrowNext,
              height: 76,
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
