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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: Carousel(
                      height: Constants.mainPageCarouselHeight,
                      width: Constants.mainPageCarouselWidth,
                      images: [
                        Image.asset(Assets.galleryExample1, fit: BoxFit.fill),
                        Image.asset(Assets.galleryExample2, fit: BoxFit.fill),
                        Image.asset(Assets.galleryExample3, fit: BoxFit.fill),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 25, 5, 5),
                    child: Text("RECENT ACTICITIES", style: w500.colorBlack.size20),
                  ),
                  Gallery(
                      itemsPerRow: 2,
                      decorater: (x) { return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              child: Container(
                            //                                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.black),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: x,
                                  )),
                            ),
                          );},
                      images: [
                      Image.asset(Assets.recentExample1, fit: BoxFit.fill, height: 150, width: 150,),
                      Image.asset(Assets.recentExample2, fit: BoxFit.fill, height: 150, width: 150,),
                      Image.asset(Assets.recentExample3, fit: BoxFit.fill, height: 150, width: 150,),
                      Image.asset(Assets.recentExample4, fit: BoxFit.fill, height: 150, width: 150,),
                      ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: BigButton(
                        text: "Events",
                        onTap: () {
                          Navigator.push(context, Routes.eventListPage);
                        }),
                  ),
                  BigButton(text: "About Us", onTap: () {
                        Navigator.push(context, Routes.aboutUsPage);
                  }),
                  BigButton(text: "Contact Us", onTap: () {
                        Navigator.push(context, Routes.contactUsPage);}),
                  BigButton(text: "Our Team", onTap: () {
                        Navigator.push(context, Routes.ourTeamPage);
                      }),
                  BigButton(text: "Developers", onTap: () {
                    Navigator.push(context, Routes.developersPage);
                  }),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ));
  }
}
