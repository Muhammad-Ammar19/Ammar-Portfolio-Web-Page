import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/controller/get_controller.dart';
import 'package:muhammad_ammar/responsive/mobile_scaffold.dart';
import 'package:muhammad_ammar/responsive/responsive_layout.dart';
import 'package:muhammad_ammar/responsive/tablet_scaffold.dart';
import 'package:muhammad_ammar/responsive/desktop_scaffold.dart';
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

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetController>(
      init: GetController(),
      builder: (controller) {
        return const ShadApp.material(debugShowCheckedModeBanner: false,
          home: ResponsiveLayout(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold(),
          ),
        );
      },
    );
  }
}
