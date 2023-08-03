import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class ResultTitleWidget extends StatelessWidget {
  final String titleText;
  const ResultTitleWidget({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return BorderedText(
      strokeWidth: 9,
      strokeColor: Colors.black,
      child: Text(
        titleText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 50,
        ),
      ),
    );
  }
}
