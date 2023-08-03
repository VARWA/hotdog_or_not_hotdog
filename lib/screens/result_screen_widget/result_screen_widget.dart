import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:hotdog_or_not_hotdog/screens/result_screen_widget/widgets/bottom_not_hotdog_widget.dart';
import 'package:hotdog_or_not_hotdog/screens/result_screen_widget/widgets/top_hotdog_widget.dart';
import 'package:tflite_v2/tflite_v2.dart';

import '../../classify_image.dart';

class ResultWidget extends StatelessWidget {
  final String pathToPhoto;

  const ResultWidget({super.key, required this.pathToPhoto});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: FutureBuilder<bool>(
            future: classifyImage(path: pathToPhoto),
            builder: (context, snapshot) {
              final hasData = snapshot.hasData;
              if (hasData) Tflite.close();

              return Stack(
                children: [
                  Align(
                    alignment: hasData
                        ? (snapshot.data! != true
                            ? AlignmentDirectional.topCenter
                            : AlignmentDirectional.bottomCenter)
                        : AlignmentDirectional.center,
                    child: SizedBox(
                      height: height - (hasData ? height / 7 : 0),
                      child: Image.file(
                        io.File(pathToPhoto),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  hasData
                      ? snapshot.data!
                          ? Align(
                              alignment: AlignmentDirectional.topCenter,
                              child: TopHotdogWidget(height: height),
                            )
                          : Align(
                              alignment: AlignmentDirectional.bottomCenter,
                              child: BottomNotHotdogWidget(height: height),
                            )
                      : const Center(
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: CircularProgressIndicator(
                              strokeWidth: 20,
                            ),
                          ),
                        )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
