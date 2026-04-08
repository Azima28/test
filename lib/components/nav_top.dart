import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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

                Navigator.pushNamed(context, '/screen/home');

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
        ]));
  }
}
