import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/table.dart';
import 'package:ircs_uk/widgets/top_row.dart';

class ParticularEvent extends StatelessWidget {
  const ParticularEvent({super.key, required this.eventName});

  final String eventName;

  static const List<String> districts = [
    "Dehradun",
    "Uttarkashi",
    "Chamoli",
    "Champawat",
    "Pithoraghar",
    "Almora",
    "Haridwar",
    "Nanital",
    "Udham Singh Nagar",
    "Rudra Pryag",
    "Tehri Gharwal",
    "Bageshwar",
    "Pauri Gharwal"
  ];
  static const List<int> counts = [
    55,
    2,
    6,
    2,
    18,
    5,
    53,
    6,
    1,
    52,
    23,
    54,
    24
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
      showBottomBar: false,
      builder: () => SingleChildScrollView(
          child: Column(
        children: [
          TopRow(text: eventName),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Carousel(
                images: [
                  Container(
                    child: Image.asset(
                      Assets.eventExample1,
                      fit: BoxFit.fill,
                    ),
                    height: 125,
                    width: 250,
                  )
                ],
                height: Constants.mainPageCarouselHeight,
                width: Constants.mainPageCarouselWidth),
          ),
          CustomTable(
              rows: 2,
              columns: 14,
              borderThickness: 1,
              cellHeight: 50,
              cellWidth: 150,
              builder: (x, y) {
                if (y == 0 && x == 0) {
                  return Center(child: Text("District Name"));
                } else if (y == 0 && x == 1) {
                  return Center(child: Text("Count"));
                }
                if (x == 0)
                  return Center(child: Text(districts[y - 1]));
                else
                  return Center(child: Text(counts[y - 1].toString()));
              }),
          SizedBox(
            height: 30,
          )
        ],
      )),
    );
  }
}
