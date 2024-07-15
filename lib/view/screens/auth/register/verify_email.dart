import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/constants/app_fonts.dart';
import 'package:data_storage_mobile_app/constants/app_images.dart';
import 'package:data_storage_mobile_app/constants/app_sizes.dart';
import 'package:data_storage_mobile_app/view/screens/auth/register/congrats.dart';
import 'package:data_storage_mobile_app/view/widget/custom_app_bar_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_button_widget.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DEFAULT_THEME = PinTheme(
      width: 58,
      height: 72,
      margin: EdgeInsets.zero,
      textStyle: TextStyle(
        fontSize: 24,
        height: 0.0,
        fontWeight: FontWeight.w600,
        color: kSecondaryColor,
        fontFamily: AppFonts.MULISH,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: kTertiaryColor.withOpacity(.3),
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
    );
    return Scaffold(
      appBar: logoAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: AppSizes.DEFAULT,
              children: [
                MyText(
                  text: 'Enter OTP',
                  size: 20,
                  weight: FontWeight.w600,
                  textAlign: TextAlign.center,
                  paddingBottom: 10,
                ),
                MyText(
                  text:
                      'To verify your email please enter  the OTP we sent to abcd@gmail.com.',
                  size: 12,
                  textAlign: TextAlign.center,
                  paddingBottom: 40,
                  lineHeight: 1.5,
                  color: kHintColor,
                ),
                Pinput(
                  length: 5,
                  onChanged: (value) {},
                  pinContentAlignment: Alignment.center,
                  defaultPinTheme: DEFAULT_THEME,
                  focusedPinTheme: DEFAULT_THEME.copyWith(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: kTertiaryColor,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  submittedPinTheme: DEFAULT_THEME.copyWith(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: kSecondaryColor,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  separatorBuilder: (index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  onCompleted: (pin) => print(pin),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              buttonText: 'Verify',
              onTap: () {
                Get.to(() => Congratulation());
              },
            ),
          ),
        ],
      ),
    );
  }
}
