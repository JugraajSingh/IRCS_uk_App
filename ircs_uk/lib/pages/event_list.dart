import 'package:flutter/material.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';
import 'package:ircs_uk/widgets/big_button.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/gallery.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
        showBottomBar: false,
        builder: () => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gallery(images: [
                    for (int i = 0; i < 9; i++)
                      Container(
                        color: Colors.black,
                        height: 125,
                        width: 125,
                      )
                  ], itemsPerRow: 2)
                ],
              ),
            ));
  }
}
