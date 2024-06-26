import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: MediaQuery.of(context).size.height * 0.8, // First Container
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
                  fit: BoxFit.cover,
                ),
              ),);

  }
}