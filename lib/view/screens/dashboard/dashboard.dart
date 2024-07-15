import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:data_storage_mobile_app/view/widget/pie_chart_widget.dart';
import 'package:flutter/material.dart';
import '../../widget/folder_thumbnail_widget.dart';
import '../../widget/thumbnail_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: AppSizes.DEFAULT,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
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
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kQuaternaryColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          PirChartWidget(),
                          SizedBox(
                            height: 16,
                          ),
                          MyButton(
                            height: 25,
                            radius: 4,
                            textSize: 10,
                            buttonText: 'Upgrade',
                            onTap: () {},
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
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kQuaternaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _StorageInfoTile(
                          color: kSecondaryColor,
                          title: 'Photos',
                          storageTaken: '20.5 GB',
                        ),
                        _StorageInfoTile(
                          color: kVideosColor,
                          title: 'Videos',
                          storageTaken: '20.5 GB',
                        ),
                        _StorageInfoTile(
                          color: kDocsColor,
                          title: 'Documents',
                          storageTaken: '20.5 GB',
                        ),
                        _StorageInfoTile(
                          color: kOtherColor,
                          title: 'Other',
                          storageTaken: '20.5 GB',
                        ),
                        _StorageInfoTile(
                          color: kAvailableColor,
                          title: 'Available',
                          storageTaken: '20.5 GB',
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
          MyText(
            text: 'Recently Visited',
            size: 14,
            weight: FontWeight.w600,
            paddingBottom: 16,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 107,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return FolderThumbnail(
                  title: 'Mobile Data',
                  onTap: () {},
                );
              } else {
                return Thumbnail(
                  icon: Assets.imagesPlay,
                  title: 'Mobile Data',
                  onTap: () {},
                );
              }
            },
          ),
          SizedBox(
            height: 12,
          ),
          MyText(
            text: 'Recent Upload',
            size: 14,
            weight: FontWeight.w600,
            paddingBottom: 16,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 107,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return FolderThumbnail(
                  title: 'Mobile Data',
                  onTap: () {},
                );
              } else {
                return Thumbnail(
                  icon: Assets.imagesPlay,
                  title: 'Mobile Data',
                  onTap: () {},
                );
              }
            },
          ),
          SizedBox(
            height: 12,
          ),
          MyText(
            text: 'Shared',
            size: 14,
            weight: FontWeight.w600,
            paddingBottom: 16,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 107,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return FolderThumbnail(
                  title: 'Mobile Data',
                  onTap: () {},
                );
              } else {
                return Thumbnail(
                  icon: Assets.imagesPlay,
                  title: 'Mobile Data',
                  onTap: () {},
                );
              }
            },
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}

class _StorageInfoTile extends StatelessWidget {
  const _StorageInfoTile({
    required this.color,
    required this.title,
    required this.storageTaken,
  });
  final Color color;
  final String title;
  final String storageTaken;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Expanded(
          child: MyText(
            text: title,
            size: 10,
            paddingLeft: 8,
            weight: FontWeight.w600,
          ),
        ),
        MyText(
          text: storageTaken,
          size: 10,
          color: kHintColor,
          weight: FontWeight.w600,
        ),
      ],
    );
  }
}
