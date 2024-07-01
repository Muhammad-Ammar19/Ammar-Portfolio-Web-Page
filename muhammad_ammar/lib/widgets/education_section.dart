import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.50,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text("Education"),
                    icon: const Icon(Icons.work_outlined),
                  ),
                  Container(),
                ],
              ),
            ],
          ),
        ],
      ))
    ]);
  }
}
