import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: Get.height *0.9,
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    height: 100,
                    width: 100,
                    "assets/images/deeptune.png",
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Deeptune - Music Player',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
           const SizedBox(height: 30),
            const Text(
              "Deeptune is an elegant and intuitive player application developed with Flutter. Designed to deliver a smooth audio experience, Deeptune has a modern interface, strong performance and extensive customization options. Whether you're curating playlists, exploring new downloaded music, or enjoying your favorite tracks, Deeptune delivers high-quality, immersive listening.",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 2),
            ),
            const Flexible(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                        "assets/images/5s_7_8_Preview_1-removebg-preview.png"),
                  ),
                  Image(
                    image: AssetImage(
                        "assets/images/5s_7_8_Preview_2-removebg-preview.png"),
                  ),
                  Image(
                    image: AssetImage(
                        "assets/images/5s_7_8_Preview_3-removebg-preview.png"),
                  ),
                  Image(
                    image: AssetImage(
                        "assets/images/5s_7_8_Preview_4-removebg-preview.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
