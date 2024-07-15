import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Language',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppSizes.DEFAULT,
        physics: BouncingScrollPhysics(),
        children: [
          MyTextField(
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
          ListView.builder(
            shrinkWrap: true,
            itemCount: 7,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final List<Map<String, dynamic>> _items = [
                {
                  'flag': Assets.imagesUk,
                  'language': 'English',
                },
                {
                  'flag': Assets.imagesItalian,
                  'language': 'Italian',
                },
                {
                  'flag': Assets.imagesChina,
                  'language': 'Chinese',
                },
                {
                  'flag': Assets.imagesFrench,
                  'language': 'French',
                },
                {
                  'flag': Assets.imagesGerman,
                  'language': 'German',
                },
                {
                  'flag': Assets.imagesSpain,
                  'language': 'Spanish',
                },
                {
                  'flag': Assets.imagesRussia,
                  'language': 'Russian',
                },
              ];
              return _LanguageTile(
                isSelected: index == 0,
                flag: _items[index]['flag'],
                title: _items[index]['language'],
                onTap: () {},
              );
            },
          )
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  final String title;
  final String flag;
  final bool isSelected;
  final VoidCallback onTap;

  const _LanguageTile({
    required this.title,
    required this.flag,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? kQuaternaryColor : Colors.transparent,
        border: Border.all(
          width: 1.0,
          color: isSelected ? kSecondaryColor : Colors.transparent,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            flag,
            height: 30,
          ),
          Expanded(
            child: MyText(
              paddingLeft: 16,
              text: title,
              size: 16,
              weight: FontWeight.w600,
            ),
          ),
          if (isSelected)
            Image.asset(
              Assets.imagesSelected,
              height: 20,
            ),
        ],
      ),
    );
  }
}
