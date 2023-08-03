import 'package:flutter/material.dart';

import '../painters/bottom_containter_painter.dart';
import 'result_title_widget.dart';

class BottomNotHotdogWidget extends StatelessWidget {
  const BottomNotHotdogWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BottomContainerPainter(),
      child: Container(
        alignment: AlignmentDirectional.bottomCenter,
        height: height / 7 * 2,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: height / 7,
              child: Padding(
                padding: EdgeInsets.only(
                  top: height / 32,
                ),
                child: const Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Icon(
                      Icons.clear,
                      size: 138,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.clear,
                      size: 130,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 7,
              child: const ResultTitleWidget(
                titleText: 'Not hotdog',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
