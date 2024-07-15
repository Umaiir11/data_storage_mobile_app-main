import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/sync/pair_folder.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvanceSync extends StatelessWidget {
  const AdvanceSync({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Advance Sync',
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
                Container(
                  height: 48,
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: kQuaternaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.imagesAutoSync,
                        height: 20,
                      ),
                      Expanded(
                        child: MyText(
                          paddingLeft: 10,
                          text: 'Enable Auto Sync',
                          size: 14,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.65,
                        alignment: Alignment.centerRight,
                        child: CupertinoSwitch(
                          activeColor: kSecondaryColor,
                          value: true,
                          onChanged: (v) {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 4),
                  decoration: BoxDecoration(
                    color: kQuaternaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Assets.imagesFolderSmall,
                            height: 14,
                          ),
                          Expanded(
                            child: MyText(
                              paddingLeft: 10,
                              text: 'Office Images',
                              size: 12,
                              color: kSecondaryColor,
                              weight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(
                            Assets.imagesMoreVert,
                            height: 24,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Assets.imagesOfflineImages,
                            height: 20,
                          ),
                          Expanded(
                            child: MyText(
                              paddingLeft: 10,
                              text: 'Images/Office Images',
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Assets.imagesOfficeImages,
                            height: 20,
                          ),
                          Expanded(
                            child: MyText(
                              paddingLeft: 10,
                              text: 'Images/Office Images',
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Assets.imagesUploadOnly,
                            height: 20,
                          ),
                          Expanded(
                            child: MyText(
                              paddingLeft: 10,
                              text: 'Upload Only',
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                          ),
                          Transform.scale(
                            scale: 0.65,
                            alignment: Alignment.centerRight,
                            child: CupertinoSwitch(
                              activeColor: kSecondaryColor,
                              value: true,
                              onChanged: (v) {},
                            ),
                          ),
                        ],
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
              buttonText: 'Pair folder',
              onTap: () {
                Get.to(() => PairFolder());
              },
            ),
          ),
        ],
      ),
    );
  }
}
