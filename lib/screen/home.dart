import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: Stack(children: [
                    Positioned(
                      left: 560,
                      width: 319,
                      top: 512,
                      height: 163,
                      child: SizedBox(
                        width: 319,
                        height: 163,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('HOME',
                              style: TextStyle(
                                  fontSize: 96,
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  color: const Color(0xFF000000))),
                        ),
                      ),
                    )
                  ]))),
        ),
      ),
    );
  }
}
