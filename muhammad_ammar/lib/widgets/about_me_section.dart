import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      child: Stack(fit: StackFit.expand,
        children:[ Image.network(
          "https://petrix-react.vercel.app/images/golden_bg.jpg",
          fit: BoxFit.cover,
        ),
        const Center(child: Row(
          children: [
            Column(
              children: [
              
              ],
            ),
          ],
        )),
        
        ]
      ),
    );
  }
}