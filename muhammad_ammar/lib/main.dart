import 'package:flutter/material.dart';
import 'package:muhammad_ammar/responsive/mobile_scaffold.dart';
import 'package:muhammad_ammar/responsive/responsive_layout.dart';
import 'package:muhammad_ammar/responsive/tablet_scaffold.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'responsive/desktop_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShadApp.material(
      title: 'Muhammad-Ammar',
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
