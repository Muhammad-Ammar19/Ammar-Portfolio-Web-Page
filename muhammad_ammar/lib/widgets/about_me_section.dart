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
                Text('Hello! I’m David Petrix. Web designerfrom USA, California, San Francisco. I have rich experience in web site designand building, lso I am good at wordpress. I love to talk with you aboutour unique.',style: TextStyle(fontFamily: 'Sora'),),
              ],
            ),
          ],
        )),
        
        ]
      ),
    );
  }
}