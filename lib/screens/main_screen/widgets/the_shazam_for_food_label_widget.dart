import 'package:flutter/material.dart';

class TheShazamForFoodLabelWidget extends StatelessWidget {
  const TheShazamForFoodLabelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          '"The Shazam for Food"',
          style: TextStyle(
              color: Colors.red, fontSize: 35, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
