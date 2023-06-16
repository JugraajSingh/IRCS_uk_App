import 'package:flutter/material.dart';
import 'package:ircs_uk/constants.dart';
import 'package:ircs_uk/screen_outline.dart';
import 'package:ircs_uk/widgets/table.dart';
import 'package:ircs_uk/widgets/top_row.dart';

class Developers extends StatelessWidget {
  const Developers({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenOutline(
      showBottomBar: false,
      builder: () {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const TopRow(text: "Contact Us"),
              CustomTable(
                rows: 1,
                columns: Constants.developres.length,
                borderThickness: 1,
                cellWidth: 200,
                builder: (x, y) {
                  return Center(child: Text(Constants.developres[y]));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
