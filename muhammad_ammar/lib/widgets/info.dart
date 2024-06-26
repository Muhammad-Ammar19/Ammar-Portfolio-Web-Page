import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[500],
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.07,
    );
  }
}