import 'package:flutter/material.dart';
import 'package:hotdog_or_not_hotdog/screens/result_screen_widget/widgets/result_title_widget.dart';

import '../painters/top_container_painter.dart';

class TopHotdogWidget extends StatelessWidget {
  const TopHotdogWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TopContainerPainter(),
      child: SizedBox(
        height: height / 7 * 2,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: SizedBox(
                height: height / 7,
                child: const ResultTitleWidget(
                  titleText: 'Hotdog',
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: SizedBox(
                height: height / 7,
                child: const Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Icon(
                      Icons.done,
                      size: 138,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.done,
                      size: 130,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 32,
            )
          ],
        ),
      ),
    );
  }
}
