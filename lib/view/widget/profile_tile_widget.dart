import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isRed = false,
  });
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool? isRed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 20,
          ),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 24,
                color: isRed! ? kRedColor : null,
              ),
              Expanded(
                child: MyText(
                  paddingLeft: 16,
                  text: title,
                  color: isRed! ? kRedColor : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
