import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  const CustomTable(
      {super.key,
      required this.rows,
      required this.columns,
      required this.borderThickness,
      required this.builder,
      this.cellHeight,
      this.cellWidth});

  final Widget Function(int, int) builder;
  final int rows;
  final int columns;

  final double? cellHeight;
  final double? cellWidth;

  final double borderThickness;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [for (int i = 0; i < columns; i++) buildRow(i)],
    );
  }

  Widget buildRow(int y) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < rows; i++)
          Container(
            height: cellHeight,
            width: cellWidth,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: y == 0 ? borderThickness : borderThickness / 2),
                    bottom: BorderSide(
                        width: y == rows - 1
                            ? borderThickness
                            : borderThickness / 2),
                    left: BorderSide(
                        width: i == 0 ? borderThickness : borderThickness / 2),
                    right: BorderSide(
                        width: y == columns - 1
                            ? borderThickness
                            : borderThickness / 2))),
            child: builder(i, y),
          )
      ],
    );
  }
}
