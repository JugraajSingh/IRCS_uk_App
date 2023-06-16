import 'package:flutter/material.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/routes.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';
import 'package:ircs_uk/widgets/big_button.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/gallery.dart';
import 'package:ircs_uk/widgets/top_row.dart';

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
                  const TopRow(text: "Event List"),

                  Gallery(images: [
                    for (int i = 0; i < 9; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, Routes.particularEvent("Blood\nDonation\nCamp"));
                          },
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.black),
//                            color: Colors.black,
                            height: 125,
                            width: 125,
                          ),
                        ),
                      )
                  ], itemsPerRow: 2)
                ],
              ),
            ));
  }
}
