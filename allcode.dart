/* 
  🚀 FIGMA TO FLUTTER V4 - ALL-IN-ONE DEBUG FILE
  Copy and send this file to Antigravity for debugging!
*/

// ==========================================
// 📄 PUBSPEC.YAML
// ==========================================
/*
name: latihan3
description: "A new Flutter project generated from Figma (The Living Ecosystem V4)"
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.2.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  flutter_svg: ^2.0.10+1
  google_fonts: ^6.1.0
  window_manager: ^0.3.7 # 👈 Added for Desktop Window Management

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.1

flutter:
  uses-material-design: true
*/

// ==========================================
// 🎯 ALL DART CODE (Entry + Screens)
// ==========================================
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_manager/window_manager.dart';

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
    double scale = scaleW < scaleH ? scaleW : scaleH; // Pilih skala terkecil agar muat dua-duanya

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


class NavTop extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;

  const NavTop({
    super.key,
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 217,
      height: 214,
      child: Stack(
      children: [
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

            Navigator.pushNamed(context, '/screen/home');

            // TODO (Backend): Tambahkan pemolesan logic untuk home di sini.
          },
          child: SizedBox(
          width: 217,
          height: 107,
          child: Stack(
          children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 206,
              height: 107,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                border: Border.all(color: const Color(0xFF000000), width: 1),
              ), 
              child: Stack(
                
              )
            ),
          ),
          Positioned(
            left: 51,
            top: 35,
            child: SizedBox(
              width: 166,
              height: 36,
              child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Home',
              style: TextStyle(
                fontSize: 32,
                fontFamily: GoogleFonts.inter().fontFamily,
                color: const Color(0xFF000000)
              )
              ),
            ),
            ),
          )
          ]
        )
        ),
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


            // TODO (Backend): Tambahkan pemolesan logic untuk dashboard di sini.
          },
          child: SizedBox(
          width: 206,
          height: 107,
          child: Stack(
          children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 206,
              height: 107,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                border: Border.all(color: const Color(0xFF000000), width: 1),
              ), 
              child: Stack(
                
              )
            ),
          ),
          Positioned(
            left: 20,
            top: 35,
            child: SizedBox(
              width: 166,
              height: 36,
              child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'dashborad',
              style: TextStyle(
                fontSize: 32,
                fontFamily: GoogleFonts.inter().fontFamily,
                color: const Color(0xFF000000)
              )
              ),
            ),
            ),
          )
          ]
        )
        ),
        ),
      )
      ]
    )
    );
  }
}


const String _kSvgVector = '''<svg     viewBox="0 0 24 27"   xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" fill-rule="evenodd" fill="#000000"  d="M2.91667 23.3333H7.29167V14.5833H16.0417V23.3333H20.4167V10.2083L11.6667 3.64583L2.91667 10.2083V23.3333ZM0 26.25V8.75L11.6667 0L23.3333 8.75V26.25H13.125V17.5H10.2083V26.25H0Z"  /></svg>''';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: SizedBox(
              width: 1440,
              height: 1024,
              child: Container(
        color: const Color(0xFFFFFFFF), 
        child: Stack(
          children: [
        Positioned(
          left: 491,
          width: 459,
          top: 605,
          height: 102,
          child: GestureDetector(
            onTap: () async {
              // 🎨 SKELETON: Rangka ini siap dipoles dengan logic backend Anda!
              // Layer Name: >btn_login
              
              // 🤖 LOGIC KONEKSI DARI NODE EDITOR:

              Navigator.pushNamed(context, '/main_wrapper', arguments: 0);

              // TODO (Backend): Tambahkan pemolesan logic untuk login di sini.
            },
            child: SizedBox(
            width: 459,
            height: 102,
            child: Stack(
            children: [
            Positioned(
              left: 0,
              width: 459,
              top: 31,
              height: 71,
              child: Container(
                width: 459,
                height: 71,
                decoration: BoxDecoration(
                  color: const Color(0xFFD73A3A),
                  border: Border.all(color: const Color(0xFF000000), width: 1),
                  borderRadius: BorderRadius.circular(26),
                ), 
                child: Stack(
                  
                )
              ),
            ),
            Positioned(
              left: 182,
              width: 96,
              top: 42,
              height: 50,
              child: SizedBox(
                width: 96,
                height: 50,
                child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  color: const Color(0xFF000000)
                )
                ),
              ),
              ),
            ),
            Positioned(
              left: 218,
              width: 35,
              top: 0,
              height: 35,
              child: SizedBox(
                width: 35,
                height: 35,
                child: Stack(
                children: [
                Positioned(
                  left: 5.833343505859375,
                  top: 4.375,
                  child: SvgPicture.string(
                    _kSvgVector,
                    width: 23.33,
                    height: 26.25,
                    fit: BoxFit.contain
                  ),
                )
                ]
              )
              ),
            )
            ]
          )
          ),
          ),
        )
        ]
        )
      )
            ),
          ),
        ),

    );
  }
}


class ScreenOverlayScreen extends StatefulWidget {
  const ScreenOverlayScreen({super.key});

  @override
  State<ScreenOverlayScreen> createState() => _ScreenOverlayScreenState();
}

class _ScreenOverlayScreenState extends State<ScreenOverlayScreen> {



  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: 585,
            height: 271,
            child: SizedBox(
        width: 585,
        height: 271,
        child: Stack(
        children: [
        Positioned(
          left: 0,
          width: 585,
          top: 0,
          height: 271,
          child: Container(
            width: 585,
            height: 271,
            decoration: BoxDecoration(
              color: const Color(0xFF837D7D),
              borderRadius: BorderRadius.circular(20),
            ), 
            child: Stack(
              
            )
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 80,
          height: 77,
          child: Center(child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'kamu sukses',
            style: TextStyle(
              fontSize: 64,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: const Color(0xFF000000)
            )
            ),
          )),
        )
        ]
      )
      )
          ),
        )),
    );
  }
}


class ScreenDashboardScreen extends StatefulWidget {
  const ScreenDashboardScreen({super.key});

  @override
  State<ScreenDashboardScreen> createState() => _ScreenDashboardScreenState();
}

class _ScreenDashboardScreenState extends State<ScreenDashboardScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Center(
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: SizedBox(
              width: 1440,
              height: 1024,
              child: Container(
        color: const Color(0xFFFFFFFF), 
        child: Stack(
          children: [
        Positioned(
          left: 505,
          width: 430,
          top: 390,
          height: 54,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'username',
                hintText: 'Ketuk untuk mengisi username...',
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        ),
        Positioned(
          left: 505,
          width: 430,
          top: 485,
          height: 54,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'password',
                hintText: 'Ketuk untuk mengisi password...',
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        )
        ]
        )
      )
            ),
          ),
        ),
    );
  }
}


class ScreenHomeScreen extends StatefulWidget {
  const ScreenHomeScreen({super.key});

  @override
  State<ScreenHomeScreen> createState() => _ScreenHomeScreenState();
}

class _ScreenHomeScreenState extends State<ScreenHomeScreen> {



  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Center(
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: SizedBox(
              width: 1440,
              height: 1024,
              child: Container(
        color: const Color(0xFFFFFFFF), 
        child: Stack(
          
        )
      )
            ),
          ),
        ),
    );
  }
}

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
              child: Stack(
              children: [
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
                  child: Stack(
                  children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 206,
                      height: 107,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        border: Border.all(color: const Color(0xFF000000), width: 1),
                      ), 
                      child: Stack(
                        
                      )
                    ),
                  ),
                  Positioned(
                    left: 51,
                    top: 35,
                    child: SizedBox(
                      width: 166,
                      height: 36,
                      child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Home',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: const Color(0xFF000000)
                      )
                      ),
                    ),
                    ),
                  )
                  ]
                )
                ),
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
                  child: Stack(
                  children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 206,
                      height: 107,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        border: Border.all(color: const Color(0xFF000000), width: 1),
                      ), 
                      child: Stack(
                        
                      )
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 35,
                    child: SizedBox(
                      width: 166,
                      height: 36,
                      child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'dashborad',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: const Color(0xFF000000)
                      )
                      ),
                    ),
                    ),
                  )
                  ]
                )
                ),
                ),
              )
              ]
            )
            ),
      SizedBox(
              width: 217,
              height: 214,
              child: Stack(
              children: [
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
                  child: Stack(
                  children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 206,
                      height: 107,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        border: Border.all(color: const Color(0xFF000000), width: 1),
                      ), 
                      child: Stack(
                        
                      )
                    ),
                  ),
                  Positioned(
                    left: 51,
                    top: 35,
                    child: SizedBox(
                      width: 166,
                      height: 36,
                      child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Home',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: const Color(0xFF000000)
                      )
                      ),
                    ),
                    ),
                  )
                  ]
                )
                ),
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
                  child: Stack(
                  children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 206,
                      height: 107,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        border: Border.all(color: const Color(0xFF000000), width: 1),
                      ), 
                      child: Stack(
                        
                      )
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 35,
                    child: SizedBox(
                      width: 166,
                      height: 36,
                      child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'dashborad',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: const Color(0xFF000000)
                      )
                      ),
                    ),
                    ),
                  )
                  ]
                )
                ),
                ),
              )
              ]
            )
            )
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          // 📦 Layer 1: Centered Page Content
          Center(
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              child: SizedBox(
                width: 1440,
                height: 1024,
                child: IndexedStack(
                  index: _currentIndex,
                  children: [
                    const ScreenDashboardScreen(), const ScreenHomeScreen()
                  ],
                ),
              ),
            ),
          ),
          // 🛠️ Layer 2: Edge-Pinned Navigation Sidebar
          Align(
            alignment: Alignment.topLeft,
            child: FittedBox(
              alignment: Alignment.topLeft,
              fit: BoxFit.contain,
              child: SizedBox(
                width: 1440,
                height: 1024,
                child: Stack(
                  children: [
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
        ],
      ),
    );
  }
}