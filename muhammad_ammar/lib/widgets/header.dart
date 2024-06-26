import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(width: MediaQuery.of(context).size.width * 0.5,
        color: const Color.fromARGB(66, 244, 67, 54),
        height: MediaQuery.of(context).size.height * 0.2,
      ),
    );
  }
}
