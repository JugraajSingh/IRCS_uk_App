import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/potrait.dart';
import 'package:ircs_uk/widgets/table.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_left, size: 100)),
                  Text(
                    "Our Team",
                    textAlign: TextAlign.center,
                    style: w700.size30,
                  ),
                  const Spacer()
                ],
              ),
              Carousel(
                  images: [
                    Potrait(image: Assets.potrait_example, designations: [
                      "Shri Kundan Singh Toliya",
                      "Chairman",
                      "Red Cross Society",
                      "Uttarakhand"
                    ])
                  ],
                  height: Constants.ourTeamCarouselHeight,
                  width: Constants.ourTeamCarouselWidth),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text("MANAGING COMMITTEE"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: AppColors.managingCommiteeLabelColor),
                ),
              ),
              CustomTable(rows: 1, columns: Constants.workingMember.length, borderThickness: 1, cellWidth: 200, builder: (x, y) {
                return Center(child: Text(Constants.workingMember[y]));
              },),
            ],
          ),
        );
      },
    );
  }
}
