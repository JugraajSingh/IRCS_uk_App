import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ircs_uk/assets.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/pages/event_list.dart';
import 'package:ircs_uk/routes.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';
import 'package:ircs_uk/widgets/big_button.dart';
import 'package:ircs_uk/widgets/carousel.dart';
import 'package:ircs_uk/widgets/gallery.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
        showBottomBar: false,
        builder: () => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Home", style: w500.colorBlack.size36),
                  Carousel(
                    height: Constants.mainPageCarouselHeight,
                    width: Constants.mainPageCarouselWidth,
                    images: [
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.green,
                      )
                    ],
                  ),
                  Text("RECENT ACTICITIES", style: w500.colorBlack.size20),
                  Gallery(
                      itemsPerRow: 2,
                      decorater: (x) { return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: x,
                                )),
                          );},
                      images: [
                        Container(
                          color: Colors.red,
                          height: 125,
                          width: 125,
                        ),
                        Container(
                          color: Colors.green,
                          height: 125,
                          width: 125,
                        ),
                        Container(
                          color: Colors.blue,
                          height: 125,
                          width: 125,
                        ),
                      ]),
                  BigButton(
                      text: "Events",
                      onTap: () {
                        Navigator.push(context, Routes.eventListPage);
                      }),
                  BigButton(text: "About Us", onTap: () {}),
                  BigButton(text: "Contact Us", onTap: () {}),
                  BigButton(text: "Our Team", onTap: () {}),
                  BigButton(text: "Developers", onTap: () {}),
                  SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ));
  }
}
