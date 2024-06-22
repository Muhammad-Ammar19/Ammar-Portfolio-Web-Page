import 'package:flutter/material.dart';

class SeventhContainer extends StatelessWidget {
  const SeventhContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Backend Development',
              style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
              
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Databases',
                      style: TextStyle(
                          fontFamily: 'Syne',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('API',
                            style: TextStyle(
                                fontFamily: 'Syne',
                                fontSize: 12,
                                fontWeight: FontWeight.w700))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Servers',
                            style: TextStyle(
                                fontFamily: 'Syne',
                                fontSize: 12,
                                fontWeight: FontWeight.w700))),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'Writing clean, maintainable, and testable backend code.',
                style: TextStyle(
                    fontFamily: 'Syne',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Image.asset("assets/images/backend.png"),
          ],
        ),
      ),
    );
  }
}
