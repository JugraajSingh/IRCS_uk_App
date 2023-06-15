import 'package:flutter/material.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/utils/text_styles.dart';

class BigButton extends StatelessWidget {
  const BigButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          width: Constants.mainPageCarouselWidth,
          decoration: const BoxDecoration(color: AppColors.sideBarColor, borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Text(
              text,
              style: w800.size28,
            ),
          ),
        ),
      ),
    );
  }
}
