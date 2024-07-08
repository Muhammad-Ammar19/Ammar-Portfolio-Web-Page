import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[500],
      width: double.infinity,
      height: 90,
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Syedammarzaki4@gmail.com",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "/",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Quetta, Pakistan",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
