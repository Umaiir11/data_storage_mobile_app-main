import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/subscription/add_new_card.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Payment Methods',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              padding: AppSizes.DEFAULT,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final List<Map<String, dynamic>> _items = [
                  {
                    'icon': Assets.imagesPaypal,
                    'title': 'PayPal',
                  },
                  {
                    'icon': Assets.imagesMaster,
                    'title': 'MasterCard',
                  },
                  {
                    'icon': Assets.imagesGooglePay,
                    'title': 'Google Pay',
                  },
                  {
                    'icon': Assets.imagesApplePay,
                    'title': 'Apple Pay',
                  },
                ];
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 12,
                  ),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: kQuaternaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        _items[index]['icon'],
                        width: 28,
                        height: 28,
                      ),
                      Expanded(
                        child: MyText(
                          text: _items[index]['title'],
                          weight: FontWeight.w600,
                          paddingLeft: 16,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        child: MyButton(
                          height: 36,
                          radius: 6,
                          textColor: kTertiaryColor,
                          bgColor: index.isEven
                              ? Colors.transparent
                              : kSecondaryColor,
                          buttonText: index.isEven ? 'Connected' : 'Connect',
                          textSize: 12,
                          weight: FontWeight.w600,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: '+ Add card',
              onTap: () {
                Get.to(() => AddNewCard());
              },
            ),
          ),
        ],
      ),
    );
  }
}
