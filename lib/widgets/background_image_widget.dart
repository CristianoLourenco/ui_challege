import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;

  const BackgroundImageWidget({
    super.key,
    required this.child,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset(
            'assets/images/home_bg.jpg',
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
