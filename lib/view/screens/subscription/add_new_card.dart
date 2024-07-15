import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_field_widget.dart';
import 'package:flutter/material.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Add New Card',
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: AppSizes.DEFAULT,
              physics: BouncingScrollPhysics(),
              children: [
                MyTextField(
                  hint: 'Card Holder Name',
                ),
                MyTextField(
                  hint: 'Card Number',
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        hint: 'Expiry Date',
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: MyTextField(
                        hint: 'CVV',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Done',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
