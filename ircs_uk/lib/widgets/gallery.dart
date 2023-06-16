import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key, required this.images, required this.itemsPerRow, this.decorater});

  final List<Widget> images;
  final Widget Function(Widget)? decorater;
  final int itemsPerRow;

  @override
  Widget build(BuildContext context) {
    int c = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int j = 0; c < images.length; j++)
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < itemsPerRow && c < images.length; i++)
                _getWidgetDecorated(c++)
            ],
          ),
      ],
    );
  }

  Widget _getWidgetDecorated(int index) {
    return decorater == null ? images[index] : decorater!(images[index]);
  }
}
