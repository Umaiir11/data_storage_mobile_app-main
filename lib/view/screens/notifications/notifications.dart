import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/common_image_view_widget.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Notifications',
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: AppSizes.DEFAULT,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                paddingTop: 5,
                text: index == 0
                    ? 'Monday, Feb 11, 2024'
                    : 'Tuesday, Feb 12, 2024',
                size: 12,
                weight: FontWeight.bold,
                paddingBottom: 8,
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Slidable(
                    key: const ValueKey(0),
                    startActionPane: ActionPane(
                      motion: ScrollMotion(),
                      extentRatio: 0.2,
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            margin: EdgeInsets.only(bottom: 12, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: kSecondaryColor,
                            ),
                            child: Center(
                              child: Image.asset(
                                Assets.imagesArchive,
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      extentRatio: 0.4,
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            margin: EdgeInsets.only(bottom: 12, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffA7FF88),
                            ),
                            child: Center(
                              child: Wrap(
                                spacing: 12,
                                children: [
                                  Image.asset(
                                    Assets.imagesPin,
                                    height: 20,
                                  ),
                                  Image.asset(
                                    Assets.imagesSleep,
                                    height: 20,
                                  ),
                                  Image.asset(
                                    Assets.imagesRemove,
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    child: _NotificationTile(),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kQuaternaryColor,
        ),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonImageView(
              height: 48,
              width: 48,
              radius: 10,
              imagePath: Assets.imagesNotificationImage,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    text: 'Lorem ipsum dolor sit amet.',
                    size: 14,
                    paddingBottom: 4,
                  ),
                  MyText(
                    text: 'Acritine texted you, say hi to her',
                    size: 10,
                    color: kHintColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyText(
                        text: '09:30 Am',
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
