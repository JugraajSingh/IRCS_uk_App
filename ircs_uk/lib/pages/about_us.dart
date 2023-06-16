import 'package:flutter/material.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/utils/text_styles.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
      showBottomBar: false,
      builder: () {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    "About Us",
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
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                "Uttarakhand StateBranch About Us The Indian Red Cross Society, Uttarakhand State Branch has been rendering humanitarian services to the people of Uttarakhand since 2002. The IRCS was established in 1920 through an Act of the Parliament, the bill passed on 17th March, 1920 and became Act XV of 1920 with the consent of the Governor General on 20th March, 1920. All its humanitarian activities are based on the four core areas i.e Disaster Response, Disaster Preparedness, Health & Care in the community and Promotion of Humanitarian Values & Fundamental Principles. Binding by seven Fundamental Principles i.e. "),
                        TextSpan(
                            text:
                                "Humanity, Impartiality, Neutrality, Independence, Voluntary Service, Unity and Universality",
                            style: w800.colorBlack.size20),
                        TextSpan(
                            text:
                                "the Indian Red Cross Society, Uttarakhand State Branch has promoted mutual understanding, friendship, cooperation and lasting peace amongst all people. It has "),
                                TextSpan(
                            text:
                                "13 District Branches ",
                            style: w800.colorBlack.size20),
                            TextSpan(
                            text:
                                "besides Junior Red Cross and Youth Red Cross units in most of the schools and colleges of Uttarakhand. The mission of the Indian Red Cross is to inspire, encourage and initiate at all times all forms of humanitarian activities so that human suffering can be minimised and even prevented and thus contribute to create more congenial climate for peace and development."),
                            
        
                      ]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
