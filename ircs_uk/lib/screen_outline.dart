import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/constants.dart';

class ScreenOutline extends StatelessWidget {
  const ScreenOutline(
      {super.key, required this.showBottomBar, required this.builder});

  final Widget Function() builder;

  final bool showBottomBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              bottom: 0,
              left: Constants.sideBarWidth,
              right: Constants.sideBarWidth,
              child: builder()),
          Positioned(
              left: 0,
              right: 0,
              top: Constants.labelsStartPos,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [

                        Image.asset(
                              Assets.screen_base_ircs,
                              height: Constants.ircsHeight,
                              width: Constants.ircsWidth,
                            )
                        ,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Image.asset(
                            Assets.screen_base_logo,
                            height: Constants.topLogoSize,
                            width: Constants.topLogoSize,
                          ),
                        ),
                            Image.asset(
                              Assets.screen_base_ukbranch,
                              height: Constants.stateBranchHeight,
                              width: Constants.stateBranchWidth,
                            ),
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
            top: Constants.sideBarMargin + Constants.contentStartPost,
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
            top: Constants.sideBarMargin + Constants.contentStartPost,
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
      ),
    );
  }
}
