import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  int _index = 0;
  _onTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Subscription',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: AppSizes.DEFAULT,
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return AnimatedContainer(
                    duration: Duration(
                      milliseconds: 220,
                    ),
                    curve: Curves.easeIn,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:
                          _index == index ? kSecondaryColor : kQuaternaryColor,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _onTap(index),
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        MyText(
                                          text: 'Recommended',
                                          size: 12,
                                          color: kTertiaryColor,
                                          paddingBottom: 2,
                                        ),
                                        MyText(
                                          text: 'Diamond plan',
                                          size: 20,
                                          weight: FontWeight.bold,
                                          color: kTertiaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  AnimatedOpacity(
                                    duration: Duration(milliseconds: 220),
                                    opacity: _index == 0 ? 1.0 : 0.0,
                                    curve: Curves.easeIn,
                                    child: Image.asset(
                                      Assets.imagesSelected,
                                      height: 36,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              ...List.generate(
                                5,
                                (index) {
                                  final List<String> _items = [
                                    '200 GB Storage',
                                    'Date Encryption',
                                    'Auto Synchronization',
                                    'Password Protection for data sharing',
                                    'Revert changes within100 days',
                                  ];
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          Assets.imagesCheck,
                                          height: 14,
                                        ),
                                        Expanded(
                                          child: MyText(
                                            paddingLeft: 6,
                                            text: _items[index],
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              MyText(
                                paddingTop: 4,
                                text: '\$29.99/m',
                                size: 24,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return AnimatedContainer(
                    duration: Duration(
                      milliseconds: 220,
                    ),
                    curve: Curves.easeIn,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:
                          _index == index ? kSecondaryColor : kQuaternaryColor,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _onTap(index),
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: MyText(
                                  text: index == 1 ? 'Gold' : 'Basic',
                                  size: 20,
                                  weight: FontWeight.bold,
                                  color: kTertiaryColor,
                                ),
                              ),
                              MyText(
                                text: index == 1 ? '\$19.99/m' : '\$9.99/m',
                                size: 24,
                                weight: FontWeight.bold,
                                color: kTertiaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          MyText(
            text: 'Ask me later',
            size: 12,
            weight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Select',
              onTap: () {
                Get.to(() => BottomNavBar());
              },
            ),
          ),
        ],
      ),
    );
  }
}
