import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.50, // First Container
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
                  fit: BoxFit.cover,
                ),
              ),);
  }
}