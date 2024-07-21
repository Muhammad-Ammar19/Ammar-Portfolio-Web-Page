import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: Get.height * 1.1,
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: ListView(
          children: [
            _buildPortfolioItem(
              context,
              'Deeptune - Music Player',
              'assets/images/deeptune.png',
              "Deeptune is an elegant and intuitive player application developed with Flutter. Designed to deliver a smooth audio experience, Deeptune has a modern interface, strong performance and extensive customization options. Whether you're curating playlists, exploring new downloaded music, or enjoying your favorite tracks, Deeptune delivers high-quality, immersive listening.",
              [],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioItem(BuildContext context, String title,
      String imagePath, String description, List<String> previewImages) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              fontFamily: 'Sora',
              fontSize: 22,
              fontWeight: FontWeight.w500,
              height: 2.5,
            ),
          ),
          const SizedBox(height: 10),
          const ExpansionTile(
            title: Text(
              'Show in-app screenshots',
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/Untitled.png'),
                          height: 500,
                        ),
                      ),
                      SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/Deeptune_gif1.gif'),
                          height: 500,
                        ),
                      ),
                      SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/Deeptune_gif2.gif'),
                          height: 500,
                        ),
                      ),
                      SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/Deeptune_gif3.gif'),
                          height: 500,
                        ),
                      ), SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/Deeptune_gif4.gif'),
                          height: 500,
                        ),
                      ),
                      SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/deeptune_dark2.jpg'),
                          height: 500,
                        ),
                      ),
                      SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/deeptune_dark3.jpg'),
                          height: 500,
                        ),
                      ),  SizedBox(width: 20),
                      InstaImageViewer(
                        child: Image(
                          image: AssetImage('assets/images/music_library.jpg'),
                          height: 500,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
