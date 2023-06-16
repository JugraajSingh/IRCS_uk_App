import 'package:flutter/material.dart';
import 'package:ircs_uk/colors.dart';

class Potrait extends StatelessWidget {
  const Potrait({super.key, required this.image, required this.designations});
  
  final String image;
  final List<String> designations;

  @override
  Widget build(BuildContext context) {

    return Container(color: AppColors.sideBarColor, child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Image.asset(image),
      for (int i = 0; i < designations.length; i++)
        Text(designations[i])
    ],),);
  }
  
}