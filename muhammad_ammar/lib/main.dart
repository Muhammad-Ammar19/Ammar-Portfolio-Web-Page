import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/controller/get_controller.dart';
import 'package:muhammad_ammar/responsive/mobile_scaffold.dart';
import 'package:muhammad_ammar/responsive/responsive_layout.dart';
import 'package:muhammad_ammar/responsive/tablet_scaffold.dart';
import 'package:muhammad_ammar/responsive/desktop_scaffold.dart';
import 'package:muhammad_ammar/widgets/loading.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Muhammad-Ammar',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> prefetchImages() async {
    
    List<String> imageUrls = [
      'https://petrix-react.vercel.app/_next/static/media/body_bg.255c616a.jpg',
      'https://petrix-react.vercel.app/images/golden_bg.jpg',
      
    ];

    await Future.wait(imageUrls.map((url) => _loadNetworkImage(url)));
  }

  Future<void> _loadNetworkImage(String url) async {
    final Completer<void> completer = Completer();
    final Image image = Image.network(url);

    image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener((_, __) {
        completer.complete();
      }, onError: (dynamic exception, StackTrace? stackTrace) {
        completer.complete();
      }),
    );

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetController>(
      init: GetController(),
      builder: (controller) {
        return FutureBuilder(
          future: prefetchImages(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              
              return const Scaffold(
                body: Center(
                  child: LoadingScreen(),
                ),
              );
            } else {
              return ShadApp.material(
                debugShowCheckedModeBanner: false,
                home: ResponsiveLayout(
                  mobileScaffold: MobileScaffold(),
                  tabletScaffold: const TabletScaffold(),
                  desktopScaffold: const DesktopScaffold(),
                ),
              );
            }
          },
        );
      },
    );
  }
}
