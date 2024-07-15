import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_fonts.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/main.dart';
import 'package:data_storage_mobile_app/view/screens/notifications/notifications.dart';
import 'package:data_storage_mobile_app/view/screens/profile/profile.dart';
import 'package:data_storage_mobile_app/view/widget/common_image_view_widget.dart';
import 'package:data_storage_mobile_app/view/widget/folder_thumbnail_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:data_storage_mobile_app/view/widget/thumbnail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Files extends StatelessWidget {
  const Files({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> _items = [
      'Folders',
      'Images',
      'Videos',
      'Documents',
    ];
    return DefaultTabController(
      length: _items.length,
      initialIndex: 0,
      child: Scaffold(
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 210,
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
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: AppSizes.HORIZONTAL,
                        child: MyTextField(
                          marginBottom: 100,
                          hint: 'Search here',
                          suffix: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Assets.imagesSearch,
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size(0, 90),
                  child: Container(
                    color: kPrimaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: TabBar(
                            isScrollable: true,
                            labelColor: kSecondaryColor,
                            unselectedLabelColor: kTertiaryColor,
                            indicatorColor: kSecondaryColor,
                            indicatorWeight: 2,
                            labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.MULISH,
                            ),
                            unselectedLabelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.MULISH,
                            ),
                            automaticIndicatorColorAdjustment: false,
                            tabs: _items.map((e) {
                              return Tab(
                                text: e,
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              Assets.imagesSort,
                              height: 20,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              Assets.imagesGrid,
                              height: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              _Folders(),
              _Images(),
              _Videos(),
              _Documents(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Folders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: AppSizes.HORIZONTAL,
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingTop: 20,
                  text: index == 0
                      ? 'Monday, Feb 11, 2024'
                      : 'Tuesday, Feb 12, 2024',
                  size: 12,
                  weight: FontWeight.bold,
                  paddingBottom: 8,
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
                    return FolderThumbnail(
                      title: 'Mobile Data',
                      onTap: () {},
                    );
                  },
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 200,
        ),
      ],
    );
  }
}

class _Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: AppSizes.HORIZONTAL,
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingTop: 20,
                  text: index == 0
                      ? 'Monday, Feb 11, 2024'
                      : 'Tuesday, Feb 12, 2024',
                  size: 12,
                  weight: FontWeight.bold,
                  paddingBottom: 8,
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
                    return Thumbnail(
                      icon: Assets.imagesImage,
                      title: 'Mobile Data',
                      onTap: () {},
                    );
                  },
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 200,
        ),
      ],
    );
  }
}

class _Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: AppSizes.HORIZONTAL,
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingTop: 20,
                  text: index == 0
                      ? 'Monday, Feb 11, 2024'
                      : 'Tuesday, Feb 12, 2024',
                  size: 12,
                  weight: FontWeight.bold,
                  paddingBottom: 8,
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
                    return Thumbnail(
                      icon: Assets.imagesPlay,
                      title: 'Mobile Data',
                      onTap: () {},
                    );
                  },
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 200,
        ),
      ],
    );
  }
}

class _Documents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: AppSizes.HORIZONTAL,
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingTop: 20,
                  text: index == 0
                      ? 'Monday, Feb 11, 2024'
                      : 'Tuesday, Feb 12, 2024',
                  size: 12,
                  weight: FontWeight.bold,
                  paddingBottom: 8,
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
                  itemBuilder: (context, nIndex) {
                    return Thumbnail(
                      icon: nIndex.isEven
                          ? Assets.imagesDocument
                          : Assets.imagesPdf,
                      title: 'Mobile Data',
                      onTap: () {},
                    );
                  },
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 200,
        ),
      ],
    );
  }
}
