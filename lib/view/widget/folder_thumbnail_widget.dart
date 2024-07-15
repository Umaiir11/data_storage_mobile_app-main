import 'dart:ui';
import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderThumbnail extends StatelessWidget {
  const FolderThumbnail({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        color: kQuaternaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      Assets.imagesMoreSimple,
                      height: 20,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      Assets.imagesFolder,
                      height: 40,
                    ),
                  ),
                ),
                MyText(
                  paddingTop: 12,
                  text: 'Mobile Data',
                  size: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
