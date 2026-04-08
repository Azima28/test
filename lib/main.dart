import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_manager/window_manager.dart';
import 'package:latihan3/screen/main.dart';
import 'package:latihan3/screen/overlay.dart';
import 'package:latihan3/screen/dashboard.dart';
import 'package:latihan3/screen/home.dart';
import 'package:latihan3/components/nav_top.dart';
import 'package:latihan3/screen/main_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🪟 WINDOW MANAGER: Smart Scaling (Anti-Raksasa)
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();

    // Konfigurasi Figma Design
    const double fWidth = 1440.0;
    const double fHeight = 1024.0;
    const double maxWidth = 1200.0; // Lebar maks
    const double maxHeight = 800.0; // Tinggi maks (agar tidak mentok taskbar)

    double scaleW = fWidth > maxWidth ? maxWidth / fWidth : 1.0;
    double scaleH = fHeight > maxHeight ? maxHeight / fHeight : 1.0;
    double scale = scaleW < scaleH
        ? scaleW
        : scaleH; // Pilih skala terkecil agar muat dua-duanya

    WindowOptions windowOptions = WindowOptions(
      size: Size(fWidth * scale, fHeight * scale),
      center: true,
      title: "Figma Design Preview (Scale: ${(scale * 100).round()}%)",
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(const MyApp());
}

class AppColors {
  // No Figma Local Styles found.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma to Flutter V4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/main',
      routes: {
        '/main': (context) => MainScreen(),
        '/screen/overlay': (context) => ScreenOverlayScreen(),
        '/screen/dashboard': (context) => ScreenDashboardScreen(),
        '/screen/home': (context) => ScreenHomeScreen(),
        '/main_wrapper': (context) => MainWrapperScreen(),
      },
    );
  }
}
