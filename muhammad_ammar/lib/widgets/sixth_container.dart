import 'package:flutter/material.dart';


class SixthContainer extends StatelessWidget {
  const SixthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'App Development',
              style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.android),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.phone_iphone),
                  ),
                ),
              ],
            ),
            const Text(
              'Highly Scalable and Visually appealing apps using Flutter and Dart.',
              style: TextStyle(
                fontFamily: 'Syne',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
              'https://mixdesign.club/themeforest/braxton/img/services/1200x900_s03.webp',
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              },
              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
