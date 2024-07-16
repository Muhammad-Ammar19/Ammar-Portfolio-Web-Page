import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: Get.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: ListView(
          children: [
            _buildPortfolioItem(
              context,
              'Deeptune - Music Player',
              'assets/images/deeptune.png',
              "Deeptune is an elegant and intuitive player application developed with Flutter. Designed to deliver a smooth audio experience, Deeptune has a modern interface, strong performance and extensive customization options. Whether you're curating playlists, exploring new downloaded music, or enjoying your favorite tracks, Deeptune delivers high-quality, immersive listening.",
              [
                "assets/images/5s_7_8_Preview_1-removebg-preview.png",
                "assets/images/5s_7_8_Preview_2-removebg-preview.png",
                "assets/images/5s_7_8_Preview_3-removebg-preview.png",
                "assets/images/5s_7_8_Preview_4-removebg-preview.png",
              ],
            ),
          
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioItem(BuildContext context, String title, String imagePath, String description, List<String> previewImages) {
    return ExpansionTile(
      title: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imagePath,
              height: 90,
              width: 90,
              alignment: Alignment.topLeft,
            ),
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Sora',
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 115.0, right: 15.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 2.5,
                ),
              ),
              const SizedBox(height: 30),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: previewImages
                    .map((image) => _buildImageItem(context, image))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageItem(BuildContext context, String assetPath) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(assetPath),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Image.asset(
        assetPath,
        height: 150,
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}


