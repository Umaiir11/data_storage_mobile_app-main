import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/main.dart';
import 'package:data_storage_mobile_app/view/screens/notifications/notifications.dart';
import 'package:data_storage_mobile_app/view/screens/profile/profile.dart';
import 'package:data_storage_mobile_app/view/widget/common_image_view_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar logoAppBar() {
  return AppBar(
    centerTitle: true,
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
    title: Image.asset(
      Assets.imagesLogo,
      height: 33,
    ),
  );
}

AppBar simpleAppBar({
  String title = '',
}) {
  return AppBar(
    centerTitle: true,
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
    title: MyText(
      text: title,
      size: 16,
      weight: FontWeight.w600,
    ),
  );
}

AppBar homeAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    titleSpacing: 20.0,
    title: Image.asset(
      Assets.imagesLogo,
      height: 25,
    ),
    actions: [
      Center(
        child: GestureDetector(
          onTap: () => Get.to(() => Notifications()),
          child: Image.asset(
            Assets.imagesNotification,
            height: 34,
          ),
        ),
      ),
      SizedBox(
        width: 8,
      ),
      Center(
        child: GestureDetector(
          onTap: () => Get.to(() => Profile()),
          child: CommonImageView(
            height: 34,
            width: 34,
            radius: 100.0,
            url: dummyImg,
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
    ],
  );
}
