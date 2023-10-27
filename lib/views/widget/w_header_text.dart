import 'package:animal_app/constant/const_style.dart';
import 'package:flutter/material.dart';

class WidgetHeaderText extends StatelessWidget {
  const WidgetHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ANIMALS', style: StyleText.homeTitle),
          const SizedBox(height: 20),
          Text(
              "Teach kids about various animals using images, sounds, and simple text in an engaging and educational manner.",
              textAlign: TextAlign.justify,
              style: StyleText.descTitle),
        ],
      ),
    );
  }
}
