import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class Carousel extends StatefulWidget {
  const Carousel(
      {super.key,
      required this.images,
      required this.height,
      required this.width});

  final double height;
  final double width;
  final List<Widget> images;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
      onSwipe: (direction, offset) {
        if (direction == SwipeDirection.left) {
          setState(() {
            currentImage++;
            if (currentImage >= widget.images.length) {
              currentImage = 0;
            }
          });
        } else if (direction == SwipeDirection.right) {
          setState(() {
            currentImage--;
            if (currentImage < 0) {
              currentImage = widget.images.length - 1;
            }
          });
        }
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        
        child: SizedBox(height: widget.height,
        width: widget.width,
          child: Stack(
           fit: StackFit.expand,
            children: [
              widget.images[currentImage],
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    for (int i = 0; i < widget.images.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(50)),
                            color:
                                i == currentImage ? Colors.white : Colors.black,
                          ),
                          height: 15,
                          width: 15,
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
