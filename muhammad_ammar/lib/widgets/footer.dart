import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.06,
              );
  }
}