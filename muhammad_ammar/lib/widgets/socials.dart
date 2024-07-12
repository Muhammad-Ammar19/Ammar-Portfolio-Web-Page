import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://petrix-react.vercel.app/images/golden_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 180, right: 180),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                  onTap: () {
                    const link =
                        "https://pk.linkedin.com/in/muhammad-ammar-1b3980232";
                    launchUrl(Uri.parse(link),
                        mode: LaunchMode.externalApplication);
                  },
                  mouseCursor: SystemMouseCursors.click,
                  child: _buildSocialButton("My Linkedin")),
            ),
            _buildDivider(),
            Expanded(
              child: InkWell(
                  onTap: () {
                    const link =
                        "https://x.com/i/flow/login?redirect_after_login=%2Fsyedammarzaki4";
                    launchUrl(Uri.parse(link),
                        mode: LaunchMode.externalApplication);
                  },
                  mouseCursor: SystemMouseCursors.click,
                  child: _buildSocialButton("My Twitter")),
            ),
            _buildDivider(),
            Expanded(
              child: InkWell(
                  onTap: () {
                    const link = "https://github.com/Muhammad-Ammar19";
                    launchUrl(Uri.parse(link),
                        mode: LaunchMode.externalApplication);
                  },
                  mouseCursor: SystemMouseCursors.click,
                  child: _buildSocialButton("My Github")),
            ),
            _buildDivider(),
            Expanded(
              child: InkWell(
                  onTap: () {
                    const link =
                        "https://www.instagram.com/syed_ammarxd?utm_source=qr&igsh=bXh3bmFiYzFkeTU1";
                    launchUrl(Uri.parse(link),
                        mode: LaunchMode.externalApplication);
                  },
                  mouseCursor: SystemMouseCursors.click,
                  child: _buildSocialButton("My Instagram")),
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
        fontSize: 30,
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
