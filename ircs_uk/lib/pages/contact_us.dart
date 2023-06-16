import 'package:flutter/material.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
      showBottomBar: false,
      builder: () {
        return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(onTap: () {
                  Navigator.pop(context);
                },  child: const Icon(Icons.arrow_left, size: 100)),
                Text(
                  "Contact Us",
                  textAlign: TextAlign.center,
                  style: w700.size30,
                ),
                const Spacer()
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: w500.colorBlack.size20,
                children: <TextSpan>[TextSpan(text: "Address: ", style: w800.colorBlack.size20), TextSpan(text: Constants.address)]
             ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: RichText(
//                textAlign: TextAlign.start,
                text: TextSpan(
                  style: w500.colorBlack.size20,
                children: <TextSpan>[TextSpan(text: "Tel: ", style: w800.colorBlack.size20), TextSpan(text: Constants.tel)]
             ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: RichText(
//                textAlign: TextAlign.start,
                text: TextSpan(
                  style: w500.colorBlack.size20,
                children: <TextSpan>[TextSpan(text: "Mobile: ", style: w800.colorBlack.size20), TextSpan(text: Constants.mobileNo)]
             ),
              ),
            ),
          ],
        );
      },
    );
  }
}
