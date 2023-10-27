import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({super.key, required this.imageAssets});
  final String imageAssets;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: Image.asset(
        imageAssets,
        height: 100,
      ),
    );
  }
}
