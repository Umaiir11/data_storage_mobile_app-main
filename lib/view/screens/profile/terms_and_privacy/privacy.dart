import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Privacy Policy',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppSizes.DEFAULT,
        physics: BouncingScrollPhysics(),
        children: [
          _Heading('Cloud Storage’s Privacy policy'),
          _SubHeading(
            'Last Updated: 12 Nov 2023',
          ),
          _SubHeading(
            'Welcome to Cloud Storage! This Privacy Policy outlines how we collect, use, disclose, and protect your information when you use our mobile application. By using Cloud Storage, you agree to the terms described in this policy.',
          ),
          _Heading('1. Information We Collect:'),
          _SubHeading(
            'Account Information: When you create an account, we collect your username, email address, and profile information.',
          ),
          _SubHeading(
            'Content: We may collect and store the content you create, share, or receive on Cloud Storage, such as posts, comments, and messages.',
          ),
          _SubHeading(
            'Device Information: We collect information about the device you use to access Cloud Storage, including device type, operating system, and unique device identifiers.',
          ),
          _SubHeading(
            'Usage Information: We collect data about your interactions with the app, including the features you use, the content you view, and your interactions with other users.',
          ),
          _Heading('2. How We Use Your Information:'),
          _SubHeading(
            'Providing Services: To provide and improve our services, personalize your experience, and facilitate connections with other users.',
          ),
          _SubHeading(
            'Communication: To communicate with you, respond to inquiries, and send important updates or notifications.',
          ),
          _SubHeading(
            'Analytics: To analyze usage patterns, improve the performance of our app, and enhance user experience.',
          ),
          _SubHeading(
            'Legal Compliance: To comply with legal requirements and protect our rights.',
          ),
          _Heading('3. Information Sharing:'),
          _SubHeading(
            'We do not sell your personal information to third parties. However, we may share information with trusted service providers to help us operate the app and provide support services.',
          ),
          _Heading('4. Public Information:'),
          _SubHeading(
            'Some of the information you provide on Cloud Storage may be visible to other users, depending on your privacy settings. Be mindful of the information you choose to share publicly.',
          ),
          _Heading('5. Security:'),
          _SubHeading(
            'We implement reasonable security measures to protect your information from unauthorized access, disclosure, alteration, and destruction.',
          ),
          _Heading('6. Third-Party Integrations:'),
          _SubHeading(
            'Cloud Storage may integrate with third-party services for enhanced functionality. Your use of these features may be subject to the privacy policies of those third parties.',
          ),
          _Heading('7. Children\'s Privacy:'),
          _SubHeading(
            'Cloud Storage is not intended for users under the age of 13. We do not knowingly collect or maintain personal information from children.',
          ),
          _Heading('8. Updates to Privacy Policy:'),
          _SubHeading(
            'We may update this Privacy Policy periodically. Significant changes will be communicated through the app or other appropriate channels.',
          ),
          _Heading('9. Contact Us:'),
          _SubHeading(
            'If you have any questions or concerns about this Privacy Policy, please contact us at [your contact email].',
          ),
          _SubHeading(
            'Thank you for being a part of Cloud Storage!',
          ),
          _SubHeading(
            '*Note: This is a generic template and may need customization based on specific features and functionalities of Cloud Storage. It\'s crucial to consult with legal professionals to ensure compliance with applicable laws and regulations.*',
          ),
        ],
      ),
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
      size: 14, // Slightly larger size for headings
      paddingBottom: 10,
      weight: FontWeight.bold,
    );
  }
}
