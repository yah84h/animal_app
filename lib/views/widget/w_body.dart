import 'package:animal_app/constant/const_style.dart';
import 'package:flutter/material.dart';

class WidgetBody extends StatelessWidget {
  const WidgetBody(
      {super.key,
      required this.imageName,
      required this.imageAssets,
      required this.imageDescription});
  final String imageName;
  final String imageAssets;
  final String imageDescription;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 2,
        ),
        Text(imageName.toString(), style: StyleText.imageName),
        const Spacer(),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CircleAvatar(
              radius: sizeHeight * 0.1,
              backgroundColor: Colors.white.withOpacity(0.7),
            ),
            Image.asset(
              'assets/$imageAssets',
              height: sizeHeight * 0.3,
            ),
          ],
        ),
        const Spacer(),
        Text(imageDescription.toString(),
            textAlign: TextAlign.center, style: StyleText.imageDesc),
        const Spacer()
      ],
    ));
  }
}
