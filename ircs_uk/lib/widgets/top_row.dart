import 'package:flutter/material.dart';
import 'package:ircs_uk/utils/text_styles.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        const Spacer()
      ],
    );
  }
}
