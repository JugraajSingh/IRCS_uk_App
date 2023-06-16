import 'package:flutter/material.dart';
import 'package:ircs_uk/assets.dart';
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
//                   for (int i = 0; i < 9; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, Routes.particularEvent("Yoga Day"));
                          },
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  child: Image.asset(Assets.eventExample1, fit: BoxFit.fill,),
                                  height: 125,
                                  width: 250,
                                ),
                              ),
                              Text("Yoga Day", style: w800.size20,)
                            ],
                          ),
                        ),
                      )
                  ], itemsPerRow: 1)
                ],
              ),
            ));
  }
}
