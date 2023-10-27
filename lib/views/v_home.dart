import 'package:animal_app/views/widget/w_body.dart';
import 'package:animal_app/views/widget/w_header_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '/constant/const_animals.dart';
import '/constant/const_color.dart';
import 'widget/w_image.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  String? imageText = Animals.animals[0]['name'];
  String? imageAssets = Animals.animals[0]['image'];
  String? imageDescription = Animals.animals[0]['description'];

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          Container(
            color: ConstColor.bodyColor,
            height: double.infinity,
            width: sizeWidth * 0.75,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const WidgetHeaderText(),
                  WidgetBody(
                      imageName: imageText.toString(),
                      imageAssets: imageAssets.toString(),
                      imageDescription: imageDescription.toString())
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: double.infinity,
            width: sizeWidth * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Animals.animals.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              imageAssets = Animals.animals[index]['image'];
                              imageText = Animals.animals[index]['name'];
                              imageDescription =
                                  Animals.animals[index]['description'];
                              final player = AudioPlayer();
                              player.play(AssetSource(
                                  '${Animals.animals[index]['audio']}'));
                            });
                          },
                          child: WidgetImage(
                              imageAssets:
                                  'assets/${Animals.animals[index]['image']}')),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
