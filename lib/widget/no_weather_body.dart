import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "There Is No Weather 😔 \n Start Searching Now 🔍",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
