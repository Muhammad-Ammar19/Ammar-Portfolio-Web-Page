import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.63,
          color: const Color.fromARGB(66, 244, 67, 54),
          height: MediaQuery.of(context).size.height * 0.06,
          child:  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("ryze."),
              Row(children: [],),
              
            ],
          ),
        ),
      ),
    );
  }
}
