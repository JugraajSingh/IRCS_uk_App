import 'package:flutter/material.dart';
import 'package:ircs_uk/colors.dart';
import 'package:ircs_uk/utils/text_styles.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key, required this.text, this.dots = 15});

  final String text;
  final int dots;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_left, size: 100)),
        Text(
          text,
          textAlign: TextAlign.center,
          style: w700.size30,
        ),
        const Spacer(),
        if (dots == 0)
          const Spacer()
        else
          for (int i = 0; i < dots; i++)
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              child: Container(
                color: AppColors.sideBarColor,
                height: 3,
                width: 3,
              ),
            )
      ],
    );
  }
}
