import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/potrait.dart';
import 'package:ircs_uk/widgets/table.dart';
import 'package:ircs_uk/widgets/top_row.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
      showBottomBar: false,
      builder: () {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TopRow(text: "Our Team"),
              const Carousel(
                  images: [
                    Potrait(
                      image: Assets.ltGurmitSinghPotrait, designations: [
                      "Lt. Gen. Gurmit Singh",
                      "Hon'ble Governor",
                      "President",
                      "Red Cross Uttarakhand",
                    ]),
                    Potrait(
                      image: Assets.kundanSinghPotrait, designations: [
                      "Shri Kundan Singh Toliya",
                      "Chairman",
                      "Red Cross Society",
                      " "
//                      "Uttarakhand"
                    ]),
                  ],
                  height: Constants.ourTeamCarouselHeight,
                  width: Constants.ourTeamCarouselWidth),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColors.managingCommiteeLabelColor),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Text(
                        "MANAGING COMMITTEE",
                        style: w700.size22,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTable(
                  rows: 1,
                  columns: Constants.workingMember.length,
                  borderThickness: 1,
                  cellWidth: 300,
                  builder: (x, y) {
                    return Center(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        Constants.workingMember[y],
                        style: w500.size20,
                        textAlign: TextAlign.center,
                      ),
                    ));
                  },
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        );
      },
    );
  }
}
