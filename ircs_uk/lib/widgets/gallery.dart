import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:ircs_uk/colors.dart';

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
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: images[index],
          )),
    );
  }
  /*
  const Gallery({super.key, required this.height, required this.width, required this.images});
  
  final double height;
  final double width;
  final List<Widget> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,
    height: height,
      child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      ),
      children: [
        for (int i = 0; i < images.length; i++)
        FittedBox(child: Container(color: AppColors.sideBarColor, child: Padding(padding: EdgeInsets.all(5), child: images[i])),)
      ],
    ),
    );
  }
  */
}
