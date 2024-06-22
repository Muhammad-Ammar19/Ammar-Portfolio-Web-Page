import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_ammar/responsive/desktop_scaffold2.dart';
import 'package:muhammad_ammar/responsive/mobile_scaffold.dart';
import 'package:muhammad_ammar/responsive/responsive_layout.dart';
import 'package:muhammad_ammar/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    darkTheme: ThemeData.dark(),
      title: 'Muhammad-Ammar',
      theme: ThemeData(
        fontFamily: 'Syne',
        useMaterial3: true,
        
      ),
      home:  ResponsiveLayout(
        mobileScaffold:  MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: DesktopScaffold2(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
