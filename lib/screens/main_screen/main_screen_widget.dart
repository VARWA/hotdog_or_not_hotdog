import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hotdog_or_not_hotdog/screens/main_screen/widgets/background_image_elem_widget.dart';
import 'package:hotdog_or_not_hotdog/screens/main_screen/widgets/bottom_text_widget.dart';
import 'package:hotdog_or_not_hotdog/screens/main_screen/widgets/custom_divider_widget.dart';
import 'package:hotdog_or_not_hotdog/screens/main_screen/widgets/seefood_label_widget.dart';
import 'package:hotdog_or_not_hotdog/screens/main_screen/widgets/the_shazam_for_food_label_widget.dart';
import 'package:hotdog_or_not_hotdog/screens/result_screen_widget/result_screen_widget.dart';
import 'package:image_picker/image_picker.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();

    void getImageFromCamera() {
      try {
        picker
            .pickImage(
          source: ImageSource.camera,
        )
            .then(
          (image) {
            final String? path = image?.path;
            if (path != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultWidget(
                    pathToPhoto: path,
                  ),
                ),
              );
            }
          },
        );
      } catch (e) {
        log("Error getting image from camera $e");
      }
    }

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Column(
              children: [
                Flexible(
                  flex: 2,
                  child: SeeFoodLabelWidget(),
                ),
                CustomDividerWidget(),
                Flexible(
                  flex: 1,
                  child: TheShazamForFoodLabelWidget(),
                ),
                CustomDividerWidget(),
                Flexible(
                  flex: 3,
                  child: BackgroundImageElemWidget(
                    pathToImage: 'assets/main_screen/burgers.jpg',
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: BackgroundImageElemWidget(
                    pathToImage: 'assets/main_screen/fish.jpg',
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: BackgroundImageElemWidget(
                    pathToImage: 'assets/main_screen/spagetti.jpg',
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: 85,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => getImageFromCamera(),
                      child: null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: const CircleBorder(
                          side: BorderSide(
                            width: 3,
                            color: Colors.black,
                          ),
                        ),
                        padding: const EdgeInsets.all(40),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BottomTextWidget(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
