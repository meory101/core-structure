import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wasity/core/resource/color_manager.dart';
import 'package:wasity/core/resource/font_manager.dart';
import 'package:wasity/core/resource/image_manager.dart';
import 'package:wasity/core/resource/size_manager.dart';
import 'package:wasity/core/widget/container/decorated_container.dart';
import 'package:wasity/core/widget/text/app_text_widget.dart';

class Categorys extends StatelessWidget {
  final List<String> categories = [
    "category1",
    "category2",
    "category3",
    "category4",
    "category5",
    "category6",
    "category7",
    "category8",
    "category9",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHeightManager.h36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: AppWidthManager.w4),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppHeightManager.h2point2),
                  child: DecoratedContainer(
                    width: AppWidthManager.w13point5,
                    height: AppHeightManager.h6point2,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: AssetImage(AppImageManager.categoryImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: AppWidthManager.w1Point5),
                AppTextWidget(
                  text: categories[index],
                  height: AppHeightManager.h03,
                  color: AppColorManager.white,
                  fontSize: FontSizeManager.fs15,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}