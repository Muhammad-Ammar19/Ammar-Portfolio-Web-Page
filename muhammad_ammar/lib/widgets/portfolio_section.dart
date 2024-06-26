import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color.fromARGB(183, 0, 0, 0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.50,
    );
  }
}