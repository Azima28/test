import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: Center(
          child: FittedBox(
        alignment: Alignment.center,
        fit: BoxFit.scaleDown,
        child: SizedBox(
            width: 585,
            height: 271,
            child: SizedBox(
                width: 585,
                height: 271,
                child: Stack(children: [
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
                        child: Stack()),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 80,
                    height: 77,
                    child: Center(
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('kamu sukses',
                          style: TextStyle(
                              fontSize: 64,
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: const Color(0xFF000000))),
                    )),
                  )
                ]))),
      )),
    );
  }
}
