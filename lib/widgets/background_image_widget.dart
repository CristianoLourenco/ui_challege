import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;
  final String imagePath;

  const BackgroundImageWidget({
    super.key,
    required this.child,
    required this.padding,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.5),
          ),
        ),
        Padding(
          padding: padding,
          child: child,
        )
      ],
    );
  }
}
