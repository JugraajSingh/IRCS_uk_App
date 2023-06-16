import 'package:flutter/material.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/table.dart';
import 'package:ircs_uk/widgets/top_row.dart';

class ParticularEvent extends StatelessWidget {
  const ParticularEvent({super.key, required this.eventName});

  final String eventName;

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
      showBottomBar: false,
      builder: () => SingleChildScrollView(
          child: Column(
        children: [
          TopRow(text: eventName),
          Carousel(images: [Container(color: Colors.blue,)], height: Constants.mainPageCarouselHeight, width: Constants.mainPageCarouselWidth),
          CustomTable(rows: 2, columns: 14, borderThickness: 1, cellHeight: 50, cellWidth: 150, builder: (x, y) {
            if (y == 0 && x == 0) {
              return Center(child: Text("District Name"));
            } else if (y == 0 && x == 1) {
              return Center(child: Text("Count"));
            }
            return Container();
          }),
          SizedBox(height: 30,)
        ],
      )),
    );
  }
}
