import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class SeeFoodLabelWidget extends StatelessWidget {
  const SeeFoodLabelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: BorderedText(
          strokeWidth: 13,
          strokeColor: Colors.black,
          child: const Text(
            'SEEFOOD',
            style: TextStyle(
              color: Colors.white,
              fontSize: 59,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
