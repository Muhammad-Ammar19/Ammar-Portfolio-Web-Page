import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
  const Socials({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://petrix-react.vercel.app/images/golden_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 180,right:180),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: _buildSocialButton("My Linkedin"),
            ),
            _buildDivider(),
            Expanded(
              child: _buildSocialButton("My Twitter"),
            ),
            _buildDivider(),
            Expanded(
              child: _buildSocialButton("My Github"),
            ),
            _buildDivider(),
            Expanded(
              child: _buildSocialButton("My Instagram"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Sora',
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDivider() {
    return const VerticalDivider(
      color: Colors.grey,
      thickness: 0.3,
      width: 0.2,
    );
  }
}

