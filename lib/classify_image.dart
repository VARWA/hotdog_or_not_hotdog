import 'dart:developer';

import 'package:tflite_v2/tflite_v2.dart';

Future<bool>? classifyImage({required String path}) async {
  try {
    await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
    );
    var output = await Tflite.runModelOnImage(
      path: path,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    final ans = output?[0]['index'] == 0;
    log(output.toString());
    return ans;
  } catch (e) {
    log(e.toString());
    return false;
  } finally {}
}
