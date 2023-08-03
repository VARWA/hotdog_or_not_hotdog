import 'package:flutter/material.dart';

class BackgroundImageElemWidget extends StatelessWidget {
  final String pathToImage;

  const BackgroundImageElemWidget({super.key, required this.pathToImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathToImage,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fitWidth,
    );
  }
}
