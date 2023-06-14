import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';

class ScreenOutline extends StatelessWidget {
  const ScreenOutline({super.key, required this.isScrollable});

  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.basePageGradientTop, AppColors.basePageGradientBottom])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 40,
            width: 300,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: AppColors.sideBarColor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  Assets.screen_base_logo,
                  height: 50,
                  width: 50,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.screen_base_label,
                      height: 50,
                      width: 300,
                    ),
                    Image.asset(Assets.screen_base_label,
                        height: 50, width: 300)
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.sideBarColor,
            ),
            height: 5,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
              child: Center(
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.sideBarColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                height: 350,
                width: 20,
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.sideBarColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                height: 350,
                width: 20,
              )
            ]),
          )),
          if (isScrollable)
          Container(
            height: 20,
            width: 350,
            decoration: const BoxDecoration(
                color: AppColors.sideBarColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}
