import 'package:flutter/material.dart';
import 'package:tech_newz_app/utils/text.dart';
import 'package:tech_newz_app/utils/colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Divider(
        color: AppColors.lightwhite,
      ),
    );
  }
}

class BottomSheetImage extends StatelessWidget {
  final String imageurl, title;

  BottomSheetImage({required this.imageurl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                  image: NetworkImage(imageurl), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              width: 300,
              child: BoldText(text: title, size: 18, colour: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
