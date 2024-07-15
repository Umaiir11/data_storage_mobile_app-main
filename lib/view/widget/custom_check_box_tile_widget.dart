import 'package:data_storage_mobile_app/view/widget/custom_check_box.dart';
import 'package:data_storage_mobile_app/view/widget/my_text_widget.dart';
import 'package:flutter/cupertino.dart';

class CustomCheckBoxTile extends StatelessWidget {
  const CustomCheckBoxTile({
    super.key,
    required this.title,
    required this.value,
    required this.onTap,
  });
  final String title;
  final bool value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isActive: value,
          onTap: onTap,
        ),
        Expanded(
          child: MyText(
            paddingLeft: 12,
            text: title,
            size: 12,
          ),
        ),
      ],
    );
  }
}
