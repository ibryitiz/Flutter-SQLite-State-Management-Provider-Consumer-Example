import 'package:flutter/material.dart';
import 'package:flutter_application/utils/style/my_colors.dart';
import 'package:flutter_application/utils/style/my_paddings.dart';
import 'package:flutter_application/utils/style/my_text_style.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const MyListTile({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.verticalPadding,
      child: _buildContainer,
    );
  }

  Widget get _buildContainer => Container(
        padding: Paddings.verticalPadding,
        width: double.infinity,
        decoration: _boxDecoration,
        child: ListTile(
          title: Text(
            title,
            style: MyTextStyle.titleTextStyle,
          ),
          trailing: _buildTrailing,
        ),
      );

  BoxDecoration get _boxDecoration => BoxDecoration(
        color: MyColors.listTileBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      );

  Widget get _buildTrailing => IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.delete,
          color: MyColors.whiteColor,
        ),
      );
}
