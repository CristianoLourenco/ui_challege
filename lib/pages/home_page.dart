import 'package:flutter/material.dart';
import 'package:ui_challenge_flutter/app_config.dart';
import 'package:ui_challenge_flutter/widgets/background_image_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final image = AppConfig();

    return BackgroundImageWidget(
      imagePath: image.parisBackground,
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
              flex: 7,
              child: Column(
                children: [
                  Text('June 10'),
                  Text('Update as of 10:14 PM GMT-4'),
                  Text('Sunny'),
                  Text('33°c'),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Card(
                color: const Color(0x00535353),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text('Wed 16'),
                        Flexible(
                          child: Image.asset(
                            AppConfig().cloudSunnyIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text('22°c'),
                        const Text('1-5\nkm/h'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
