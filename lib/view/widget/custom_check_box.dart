import 'package:data_storage_mobile_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    Key? key,
    required this.isActive,
    required this.onTap,
    this.unSelectedColor,
    this.selectedColor,
    this.isCircle,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback onTap;
  Color? unSelectedColor, selectedColor;
  bool? isCircle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 230,
        ),
        curve: Curves.easeInOut,
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color:
              isActive ? selectedColor ?? kSecondaryColor : Colors.transparent,
          border: Border.all(
            width: 1.6,
            color:
                isActive ? kSecondaryColor : unSelectedColor ?? kTertiaryColor,
          ),
          borderRadius: BorderRadius.circular(isCircle == true ? 50 : 5),
        ),
        child: !isActive
            ? SizedBox()
            : Icon(
                Icons.check,
                size: 12,
                color: isActive == true ? kTertiaryColor : Colors.transparent,
              ),
      ),
    );
  }
}
