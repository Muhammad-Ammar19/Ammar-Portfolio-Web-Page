import 'package:flutter/material.dart';

class ServiceRunning extends StatelessWidget {
  const ServiceRunning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEA552B),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
      child: const Center(
        child: Text(
          "SERVICES",
          style: TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 70),
        ),
      ),
    );
  }
}
