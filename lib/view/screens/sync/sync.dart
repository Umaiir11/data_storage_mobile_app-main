import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/sync/advance_sync.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_check_box_tile_widget.dart';

class Sync extends StatelessWidget {
  const Sync({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            padding: AppSizes.DEFAULT,
            physics: BouncingScrollPhysics(),
            children: [
              _SyncTile(
                onChanged: (v) {},
                value: true,
                title: 'Photos',
                expandable: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    CustomCheckBoxTile(
                      title: 'DCIM',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Camera',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Screenshots',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Pictures',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'WhatsApp Images',
                      value: true,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              _SyncTile(
                onChanged: (v) {},
                value: true,
                title: 'Videos',
                expandable: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    CustomCheckBoxTile(
                      title: 'DCIM',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Camera',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Screenshots',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Pictures',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'WhatsApp Images',
                      value: true,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              _SyncTile(
                onChanged: (v) {},
                value: true,
                title: 'Documents',
                expandable: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    CustomCheckBoxTile(
                      title: 'DCIM',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Camera',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Screenshots',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Pictures',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'WhatsApp Images',
                      value: true,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              _SyncTile(
                onChanged: (v) {},
                value: true,
                title: 'Music',
                expandable: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    CustomCheckBoxTile(
                      title: 'DCIM',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Camera',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Screenshots',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'Pictures',
                      value: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomCheckBoxTile(
                      title: 'WhatsApp Images',
                      value: true,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(() => AdvanceSync()),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.imagesSettings,
                      height: 20,
                    ),
                    MyText(
                      paddingLeft: 12,
                      text: 'Advances Options',
                      size: 12,
                      color: kSecondaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
          Positioned(
            bottom: 120,
            left: 20,
            right: 20,
            child: MyButton(
              buttonText: 'Upload Files',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _SyncTile extends StatelessWidget {
  const _SyncTile({
    required this.title,
    required this.expandable,
    required this.onChanged,
    required this.value,
  });
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final Widget expandable;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kQuaternaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ExpandableNotifier(
          child: ScrollOnExpand(
            child: ExpandablePanel(
              theme: ExpandableThemeData(
                tapHeaderToExpand: true,
                hasIcon: false,
              ),
              header: Container(
                height: 25,
                child: Row(
                  children: [
                    Image.asset(
                      Assets.imagesArrowDown,
                      height: 16,
                    ),
                    Expanded(
                      child: MyText(
                        paddingLeft: 10,
                        text: title,
                        size: 14,
                        weight: FontWeight.w600,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.65,
                      alignment: Alignment.centerRight,
                      child: CupertinoSwitch(
                        activeColor: kSecondaryColor,
                        value: value,
                        onChanged: onChanged,
                      ),
                    ),
                  ],
                ),
              ),
              collapsed: SizedBox(),
              expanded: expandable,
            ),
          ),
        ),
      ),
    );
  }
}
