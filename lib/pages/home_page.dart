import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.location_pin),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.menu),
          )
        ],
        title: const Text('CityName'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(color: Colors.red),
          ),
          Expanded(
            child: Container(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
