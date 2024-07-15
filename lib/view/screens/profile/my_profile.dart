import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/main.dart';
import 'package:data_storage_mobile_app/view/widget/common_image_view_widget.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'My Profile',
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
                Center(
                  child: Stack(
                    children: [
                      CommonImageView(
                        height: 120,
                        width: 120,
                        radius: 100.0,
                        url: dummyImg,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5,
                        child: Image.asset(
                          Assets.imagesCam,
                          height: 32,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  label: 'Name',
                  hint: 'Luqman Sardar',
                ),
                MyTextField(
                  label: 'Phone Number',
                  hint: '00 00 00 00 00',
                ),
                MyTextField(
                  label: 'Country',
                  hint: 'Select Country',
                ),
                MyTextField(
                  label: 'City',
                  hint: 'Paris',
                ),
                MyTextField(
                  label: 'Address',
                  hint: 'Enter your address',
                ),
                MyTextField(
                  label: 'Bio',
                  hint: 'Write about yourself',
                  maxLines: 8,
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Update Profile',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
