import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[500],
      width: double.infinity,
      height: Get.height *0.075,
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "syedammarzaki4@gmail.com",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "/",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Quetta, Pakistan",
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
