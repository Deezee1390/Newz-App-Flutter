import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tech_newz_app/utils/colors.dart';

import 'package:tech_newz_app/utils/text.dart';
import 'bottom_sheet.dart';
import 'components.dart';

class NewsBox extends StatelessWidget {
  final String imageurl, title, time, description, url;

  NewsBox(
      {required this.imageurl,
      required this.title,
      required this.time,
      required this.description,
      required this.url});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
            showMyBottomSheet(context, title, description, imageurl, url);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(left: 5, right: 5, top: 5),
            width: w,
            color: AppColors.black,
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageurl,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ModifiedText(
                        colour: AppColors.white,
                        size: 16,
                        text: title,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ModifiedText(
                        colour: AppColors.white,
                        size: 12,
                        text: time,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        DividerWidget()
      ],
    );
  }
}
