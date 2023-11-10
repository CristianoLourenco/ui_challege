import 'package:flutter/material.dart';
import 'package:ui_challenge_flutter/widgets/background_image_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('CityName'),
          leading: const Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.location_pin),
          ),
          actions: const [Icon(Icons.menu)],
        ),
        body: Column(
          children: [
            const Flexible(
              flex: 5,
              child: Column(
                children: [
                  Text('June 10'),
                  Text('Update as of 10:14 PM GMT-4'),

                  // Image.asset('name'),
                  Text('Sunny'),
                  Text('33°c'),
                ],
              ),
            ),
            Flexible(
              child: Container(color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}
