import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/utils/text_styles.dart';

class Potrait extends StatelessWidget {
  const Potrait({super.key, required this.image, required this.designations});

  final String image;
  final List<String> designations;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.sideBarColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(Assets.potrait_example).image),
            )),
          )),
          for (int i = 0; i < designations.length; i++) Text(designations[i], style: w400.size16,),
          const SizedBox(height: 30,)
        ],
      ),
    );
  }
}
