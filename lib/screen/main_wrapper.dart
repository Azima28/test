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

class MainWrapperScreen extends StatefulWidget {
  const MainWrapperScreen({super.key});

  @override
  State<MainWrapperScreen> createState() => _MainWrapperScreenState();
}

class _MainWrapperScreenState extends State<MainWrapperScreen> {
  int _currentIndex = 0;
  bool _isInit = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInit) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args != null && args is int) {
        _currentIndex = args;
      }
      _isInit = true;
    }
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Figma-derived Nav UI variants based on tab index
    final List<Widget> _navVariants = [
      SizedBox(
          width: 217,
          height: 214,
          child: Stack(children: [
            Positioned(
              left: 0,
              width: 217,
              top: 0,
              height: 107,
              child: GestureDetector(
                onTap: () async {
                  // 🎨 SKELETON: Rangka ini siap dipoles dengan logic backend Anda!
                  // Layer Name: >btn_home

                  // 🤖 LOGIC KONEKSI DARI NODE EDITOR:

                  _onTabTapped(1); // Shell Route override

                  // TODO (Backend): Tambahkan pemolesan logic untuk home di sini.
                },
                child: SizedBox(
                    width: 217,
                    height: 107,
                    child: Stack(children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                            width: 206,
                            height: 107,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              border: Border.all(
                                  color: const Color(0xFF000000), width: 1),
                            ),
                            child: Stack()),
                      ),
                      Positioned(
                        left: 51,
                        top: 35,
                        child: SizedBox(
                          width: 166,
                          height: 36,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('Home',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: const Color(0xFF000000))),
                          ),
                        ),
                      )
                    ])),
              ),
            ),
            Positioned(
              left: 0,
              width: 206,
              top: 107,
              height: 107,
              child: GestureDetector(
                onTap: () async {
                  // 🎨 SKELETON: Rangka ini siap dipoles dengan logic backend Anda!
                  // Layer Name: >btn_dashboard

                  // 🤖 LOGIC KONEKSI DARI NODE EDITOR:

                  _onTabTapped(0); // Auto-linked by layer name

                  // TODO (Backend): Tambahkan pemolesan logic untuk dashboard di sini.
                },
                child: SizedBox(
                    width: 206,
                    height: 107,
                    child: Stack(children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                            width: 206,
                            height: 107,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              border: Border.all(
                                  color: const Color(0xFF000000), width: 1),
                            ),
                            child: Stack()),
                      ),
                      Positioned(
                        left: 20,
                        top: 35,
                        child: SizedBox(
                          width: 166,
                          height: 36,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('dashborad',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: const Color(0xFF000000))),
                          ),
                        ),
                      )
                    ])),
              ),
            )
          ])),
      SizedBox(
          width: 217,
          height: 214,
          child: Stack(children: [
            Positioned(
              left: 0,
              width: 217,
              top: 0,
              height: 107,
              child: GestureDetector(
                onTap: () async {
                  // 🎨 SKELETON: Rangka ini siap dipoles dengan logic backend Anda!
                  // Layer Name: >btn_home

                  // 🤖 LOGIC KONEKSI DARI NODE EDITOR:

                  _onTabTapped(1); // Auto-linked by layer name

                  // TODO (Backend): Tambahkan pemolesan logic untuk home di sini.
                },
                child: SizedBox(
                    width: 217,
                    height: 107,
                    child: Stack(children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                            width: 206,
                            height: 107,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              border: Border.all(
                                  color: const Color(0xFF000000), width: 1),
                            ),
                            child: Stack()),
                      ),
                      Positioned(
                        left: 51,
                        top: 35,
                        child: SizedBox(
                          width: 166,
                          height: 36,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('Home',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: const Color(0xFF000000))),
                          ),
                        ),
                      )
                    ])),
              ),
            ),
            Positioned(
              left: 0,
              width: 206,
              top: 107,
              height: 107,
              child: GestureDetector(
                onTap: () async {
                  // 🎨 SKELETON: Rangka ini siap dipoles dengan logic backend Anda!
                  // Layer Name: >btn_dashboard

                  // 🤖 LOGIC KONEKSI DARI NODE EDITOR:

                  _onTabTapped(0); // Shell Route override

                  // TODO (Backend): Tambahkan pemolesan logic untuk dashboard di sini.
                },
                child: SizedBox(
                    width: 206,
                    height: 107,
                    child: Stack(children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                            width: 206,
                            height: 107,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              border: Border.all(
                                  color: const Color(0xFF000000), width: 1),
                            ),
                            child: Stack()),
                      ),
                      Positioned(
                        left: 20,
                        top: 35,
                        child: SizedBox(
                          width: 166,
                          height: 36,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('dashborad',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: const Color(0xFF000000))),
                          ),
                        ),
                      )
                    ])),
              ),
            )
          ]))
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.contain,
          child: SizedBox(
            width: 1440,
            height: 1024,
            child: Stack(
              children: [
                // 📦 Layer 1: Centered Page Content
                IndexedStack(
                  index: _currentIndex,
                  children: [
                    const ScreenDashboardScreen(),
                    const ScreenHomeScreen()
                  ],
                ),
                // 🛠️ Layer 2: Edge-Pinned Navigation Sidebar
                Positioned(
                  left: 0,
                  top: 0,
                  child: _navVariants[_currentIndex],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
