import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/constants.dart';

class ScreenOutline extends StatelessWidget {
  const ScreenOutline({super.key, required this.showBottomBar});

  final bool showBottomBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppColors.basePageGradientTop,
            AppColors.basePageGradientBottom
          ])),
      child: Stack(fit: StackFit.expand, children: [
        Positioned(
            top: Constants.contentStartPost,
            bottom: Constants.topBottomBarHeight,
            left: Constants.sideBarMargin,
            right: Constants.sideBarMargin,
            child: SingleChildScrollView(
              child: Column(
                children: [for (int i = 0; i < 50; i++) Text(i.toString())],
              ),
            )),
        Positioned(
            left: 0,
            right: 0,
            top: Constants.labelsStartPos,
            child: Column(
              children: [
                Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  Assets.screen_base_logo,
                  height: Constants.topLogoSize,
                  width: Constants.topLogoSize,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.screen_base_label,
                      height: Constants.topLabelHeight,
                      width: Constants.topLabelWidth,
                    ),
                    Image.asset(Assets.screen_base_label,
                        height: Constants.topLabelHeight, width: Constants.topLabelWidth)
                  ],
                )
              ],
            ),
          ),
                Container(
                  height: Constants.dividerHeight,
                  color: AppColors.sideBarColor,
                ),
              ],
            )),
        Positioned(
          top: 0,
          left: Constants.topBottomBarMargin,
          right: Constants.topBottomBarMargin,
          child: Container(
              height: Constants.topBottomBarHeight,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: AppColors.sideBarColor)),
        ),
        Positioned(
          top: Constants.sideBarMargin,
          left: 0,
          bottom: Constants.sideBarMargin,
          child: Container(
              width: Constants.sideBarWidth,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: AppColors.sideBarColor)),
        ),
        Positioned(
          top: Constants.sideBarMargin,
          right: 0,
          bottom: Constants.sideBarMargin,
          child: Container(
              width: Constants.sideBarWidth,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: AppColors.sideBarColor)),
        ),
        if (showBottomBar)
          Positioned(
            bottom: 0,
            right: Constants.topBottomBarMargin,
            left: Constants.topBottomBarMargin,
            child: Container(
                height: Constants.topBottomBarHeight,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: AppColors.sideBarColor)),
          )
      ]),
    );
/*
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppColors.basePageGradientTop,
            AppColors.basePageGradientBottom
          ])),
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
          if (showBottomBar)
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
    */
  }
}
