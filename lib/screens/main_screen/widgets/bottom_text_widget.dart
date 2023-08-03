import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class BottomTextWidget extends StatelessWidget {
  const BottomTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BorderedText(
      strokeWidth: 10,
      strokeColor: Colors.black,
      child: const Text(
        'Touch to SEEFOOD',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 40,
        ),
      ),
    );
  }
}
