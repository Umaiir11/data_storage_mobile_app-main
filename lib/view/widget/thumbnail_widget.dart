import 'dart:ui';
import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/main.dart';
import 'package:data_storage_mobile_app/view/widget/common_image_view_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:data_storage_mobile_app/view/widget/profile_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: CommonImageView(
                      height: Get.height,
                      width: Get.width,
                      radius: 10,
                      url: dummyImg,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 9,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          icon,
                          height: 14,
                        ),
                        Expanded(
                          child: MyText(
                            paddingLeft: 4,
                            text: 'Mobile Data',
                            size: 10,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 6,
          right: 8,
          child: GestureDetector(
            onTap: () {
              Get.bottomSheet(
                MoreOptionsBottomSheet(),
                isScrollControlled: true,
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 11,
                  sigmaY: 11,
                ),
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: kTertiaryColor.withOpacity(0.3),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.imagesMoreSimple,
                      height: 12,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MoreOptionsBottomSheet extends StatelessWidget {
  const MoreOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.VERTICAL,
      height: Get.height * 0.52,
      decoration: BoxDecoration(
        color: kQuaternaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: AppSizes.HORIZONTAL,
            child: Row(
              children: [
                Image.asset(
                  Assets.imagesFolder,
                  height: 20,
                ),
                Expanded(
                  child: MyText(
                    paddingLeft: 12,
                    text: 'Duseca Softwares Employee Images',
                    size: 10,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.5,
            color: Color(0xff333333),
            margin: AppSizes.DEFAULT,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              children: [
                ProfileTile(
                  icon: Assets.imagesShareFile,
                  title: 'Share',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesManageAccess,
                  title: 'Manage Access',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesAddToFavorites,
                  title: 'Add to Favorite',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesCopyLink,
                  title: 'Copy Link',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesChangeColor,
                  title: 'Change Color',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesRename,
                  title: 'Rename',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesMove,
                  title: 'Move',
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesDeleteFile,
                  title: 'Delete',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
