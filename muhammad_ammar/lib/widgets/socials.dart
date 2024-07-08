import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height:400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://petrix-react.vercel.app/images/golden_bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            );
  }
}