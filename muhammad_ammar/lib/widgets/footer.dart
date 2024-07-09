import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black,
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Copyright © 2024 Ammar. All rights reserved.",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  fontSize: 16),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_upward_rounded),
              hoverColor: Colors.black,
              color: const Color(0xFFEA552B),
              tooltip: "Scroll to top",
              iconSize: 30,
            )
          ],
        ),
      ),
    );
  }
}
