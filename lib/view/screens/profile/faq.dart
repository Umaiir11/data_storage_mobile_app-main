import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:expandable/expandable.dart';

import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'FAQs',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppSizes.DEFAULT,
        physics: BouncingScrollPhysics(),
        children: [
          _Faq(
            title: 'Is there a free trial available?',
            subTitle:
                'Yes, you can try us for free for 30 days. If you want, we’ll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.',
          ),
          _Faq(
            title: 'Can I change my plan later?',
            subTitle:
                'Integer posuere, velit sit amet aliquam posuere, odio odio mattis mi, vel dictum magna turpis vitae arcu. Sed quis ultrices neque. Vivamus ullamcorper arcu non erat laoreet, vel rhoncus quam volutpat.',
          ),
          _Faq(
            title: 'What is your cancellation policy?',
            subTitle:
                'Integer posuere, velit sit amet aliquam posuere, odio odio mattis mi, vel dictum magna turpis vitae arcu. Sed quis ultrices neque. Vivamus ullamcorper arcu non erat laoreet, vel rhoncus quam volutpat.',
          ),
          _Faq(
            title: 'Can other info be added to an invoice?',
            subTitle:
                'Integer posuere, velit sit amet aliquam posuere, odio odio mattis mi, vel dictum magna turpis vitae arcu. Sed quis ultrices neque. Vivamus ullamcorper arcu non erat laoreet, vel rhoncus quam volutpat.',
          ),
          _Faq(
            title: 'How does billing work?',
            subTitle:
                'Integer posuere, velit sit amet aliquam posuere, odio odio mattis mi, vel dictum magna turpis vitae arcu. Sed quis ultrices neque. Vivamus ullamcorper arcu non erat laoreet, vel rhoncus quam volutpat.',
          ),
          _Faq(
            title: 'How do I change my account email?',
            subTitle:
                'Integer posuere, velit sit amet aliquam posuere, odio odio mattis mi, vel dictum magna turpis vitae arcu. Sed quis ultrices neque. Vivamus ullamcorper arcu non erat laoreet, vel rhoncus quam volutpat.',
          ),
          SizedBox(
            height: 35,
          ),
          Center(
            child: Image.asset(
              Assets.imagesStillHave,
              height: 56,
            ),
          ),
          MyText(
            paddingTop: 24,
            text: 'Still have questions?',
            size: 16,
            weight: FontWeight.w600,
            textAlign: TextAlign.center,
            paddingBottom: 8,
          ),
          MyText(
            text:
                'Can’t find the answer you’re looking for? Please chat to our friendly team.',
            size: 12,
            color: kHintColor,
            textAlign: TextAlign.center,
            paddingBottom: 24,
          ),
          MyButton(
            buttonText: 'Get in touch',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _Faq extends StatelessWidget {
  const _Faq({
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ExpandableNotifier(
        child: ScrollOnExpand(
          child: ExpandablePanel(
            theme: ExpandableThemeData(
              tapHeaderToExpand: true,
              hasIcon: false,
            ),
            header: Container(
              margin: EdgeInsets.only(
                bottom: 12,
              ),
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: kQuaternaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MyText(
                      paddingLeft: 5,
                      text: title,
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: kTertiaryColor,
                  ),
                ],
              ),
            ),
            collapsed: SizedBox(),
            expanded: MyText(
              text: subTitle,
              color: kHintColor,
              paddingLeft: 10,
              paddingRight: 10,
              paddingBottom: 20,
              lineHeight: 1.6,
              size: 14,
            ),
          ),
        ),
      ),
    );
  }
}
