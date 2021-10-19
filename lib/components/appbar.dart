import 'package:flutter/material.dart';
import 'package:tech_newz_app/utils/colors.dart';
import 'package:tech_newz_app/utils/text.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  appbar({Key? key})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;
  Widget build(BuildContext context) {
    return AppBar(
      actions: [],
      backgroundColor: AppColors.black,
      elevation: 0,
      title: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoldText(
              text: 'Tech',
              size: 20,
              colour: AppColors.primary,
            ),
            ModifiedText(
              text: 'Newz',
              size: 20,
              colour: AppColors.white,
            ),
          ],
        ),
      ),
      centerTitle: true,
    );
  }
}
