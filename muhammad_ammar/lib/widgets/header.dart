import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(103, 244, 67, 54),
      height: MediaQuery.of(context).size.height * 0.2,
    );
  }
}
