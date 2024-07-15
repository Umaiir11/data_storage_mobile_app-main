import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/custom_check_box_tile_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PairFolder extends StatelessWidget {
  const PairFolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Pair Folder',
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
                Row(
                  children: [
                    MyText(
                      text: 'Folder Name ',
                      size: 12,
                      color: kTertiaryColor,
                      paddingBottom: 6,
                      weight: FontWeight.w500,
                    ),
                    MyText(
                      text: '(optional)',
                      size: 10,
                      color: kHintColor,
                      paddingBottom: 6,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
                MyTextField(
                  hint: 'Enter Folder Name',
                ),
                MyTextField(
                  isReadOnly: true,
                  label: 'Remote Folder',
                  hint: 'Select Remote Folder',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesArrowNextIos,
                        height: 14,
                      ),
                    ],
                  ),
                ),
                MyTextField(
                  isReadOnly: true,
                  label: 'Device Folder',
                  hint: 'Select Device Folder',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesArrowNextIos,
                        height: 14,
                      ),
                    ],
                  ),
                ),
                MyTextField(
                  isReadOnly: true,
                  label: 'Sync Method',
                  hint: 'Upload Only',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesArrowDown,
                        height: 12,
                      ),
                    ],
                  ),
                ),
                CustomCheckBoxTile(
                  title: 'Exclude Hidden Folders',
                  value: true,
                  onTap: () {},
                ),
                SizedBox(
                  height: 12,
                ),
                CustomCheckBoxTile(
                  title: 'Exclude Sub-Folders',
                  value: true,
                  onTap: () {},
                ),
                SizedBox(
                  height: 12,
                ),
                CustomCheckBoxTile(
                  title: 'Delete Empty Sub-Folders',
                  value: true,
                  onTap: () {},
                ),
                SizedBox(
                  height: 12,
                ),
                CustomCheckBoxTile(
                  title: 'Select Files by Name',
                  value: true,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomCheckBoxTile(
                  title: 'Use Default Sync Options',
                  value: true,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  buttonText: 'Done',
                  onTap: () {
                    Get.dialog(_SuccessDialog());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SuccessDialog extends StatelessWidget {
  const _SuccessDialog();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: kQuaternaryColor,
          margin: AppSizes.DEFAULT,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  Assets.imagesPasswordChangedSuccessfuly,
                  height: 152,
                ),
                MyText(
                  paddingTop: 24,
                  text: 'Folder Pair Created Successfully!',
                  size: 16,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center,
                  paddingBottom: 14,
                ),
                MyText(
                  text: 'Folder for syc is created Successfully',
                  size: 14,
                  color: kHintColor,
                  lineHeight: 1.5,
                  paddingLeft: 10,
                  paddingRight: 10,
                  textAlign: TextAlign.center,
                  paddingBottom: 20,
                ),
                MyButton(
                  buttonText: 'Done',
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
