import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/auth/login/login.dart';
import 'package:data_storage_mobile_app/view/screens/auth/register/register.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: AppSizes.DEFAULT,
        height: Get.height,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              Assets.imagesLogo,
              height: 60,
            ),
            Spacer(),
            MyText(
              text: 'Welcome to Nuvola',
              size: 18,
              weight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            MyText(
              paddingTop: 20,
              text:
                  'Lorem ipsum dolor sit amet consectetur. Nisi gravida in viverra quis laoreet iaculis et. Eu nibh morbi aenean vulputate. Aliquet pellentesque dui ut in id adipiscing. Turpis mauris volutpat ac sollicitudin. ',
              textAlign: TextAlign.center,
              size: 12,
              lineHeight: 1.5,
              paddingBottom: 73,
            ),
            MyButton(
              buttonText: 'Login',
              onTap: () {
                Get.to(() => Login());
              },
            ),
            SizedBox(
              height: 20,
            ),
            MyBorderButton(
              buttonText: 'Register',
              onTap: () {
                Get.to(() => Register());
              },
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
