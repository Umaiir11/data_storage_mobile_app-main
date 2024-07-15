import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Terms and Conditions',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppSizes.DEFAULT,
        physics: BouncingScrollPhysics(),
        children: [
          _Heading('Cloud Storage’s Terms & Conditions'),
          _SubHeading(
            'Welcome to Cloud Storage! Before you dive into the exciting world of social connections, courses, and events, please take a moment to review our brief terms and conditions.',
          ),
          _Heading('1. Acceptance of Terms:'),
          _SubHeading(
            'By using the Cloud Storage app, you agree to abide by these terms and conditions.',
          ),
          _Heading('2. User Responsibilities: '),
          _SubHeading(
            'You are responsible for the content you post. Respect the community guidelines and ensure your contributions are lawful and respectful.',
          ),
          _Heading('3. Privacy:'),
          _SubHeading(
            'We value your privacy. Check out our Privacy Policy to understand how we collect, use, and protect your personal information.',
          ),
          _Heading('4. Intellectual Property:'),
          _SubHeading(
            'Respect intellectual property rights. Don\'t infringe on copyrights or trademarks when posting content.',
          ),
          _Heading('5. Prohibited Activities:'),
          _SubHeading(
            'Engaging in harmful activities, spam, or any form of abuse is not allowed. Be a positive force in our community.',
          ),
          _Heading('6. Termination:'),
          _SubHeading(
            ' We reserve the right to terminate accounts violating our terms without notice.',
          ),
          _Heading('7. Updates:'),
          _SubHeading(
            'Terms may be updated; it\'s your responsibility to stay informed.',
          ),
        ],
      ),
    );
  }

  SizedBox _spacer15() {
    return SizedBox(
      height: 15,
    );
  }

  SizedBox _spacer8() {
    return SizedBox(
      height: 8,
    );
  }
}

class _SubHeading extends StatelessWidget {
  const _SubHeading(
    this.heading,
  );
  final String heading;

  @override
  Widget build(BuildContext context) {
    return MyText(
      text: heading,
      size: 12,
      weight: FontWeight.w300,
      lineHeight: 1.5,
      paddingBottom: 25,
      color: kHintColor,
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading(
    this.heading,
  );
  final String heading;

  @override
  Widget build(BuildContext context) {
    return MyText(
      text: heading,
      size: 12,
      paddingBottom: 10,
      weight: FontWeight.bold,
    );
  }
}
