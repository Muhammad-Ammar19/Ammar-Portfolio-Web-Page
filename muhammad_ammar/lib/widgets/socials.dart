import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height: MediaQuery.of(context).size.height * 0.25, // First Container
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