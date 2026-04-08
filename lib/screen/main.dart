import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan3/screen/dashboard.dart';

const String _kSvgVector =
    '''<svg     viewBox="0 0 24 27"   xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" fill-rule="evenodd" fill="#000000"  d="M2.91667 23.3333H7.29167V14.5833H16.0417V23.3333H20.4167V10.2083L11.6667 3.64583L2.91667 10.2083V23.3333ZM0 26.25V8.75L11.6667 0L23.3333 8.75V26.25H13.125V17.5H10.2083V26.25H0Z"  /></svg>''';

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
      body: SizedBox(
          width: 1440,
          height: 1024,
          child: Container(
              color: const Color(0xFFFFFFFF),
              child: Stack(children: [
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

                      Navigator.pushNamed(context, '/main_wrapper',
                          arguments: 0);

                      // TODO (Backend): Tambahkan pemolesan logic untuk login di sini.
                    },
                    child: SizedBox(
                        width: 459,
                        height: 102,
                        child: Stack(children: [
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
                                  border: Border.all(
                                      color: const Color(0xFF000000), width: 1),
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Stack()),
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
                                child: Text('Login',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        color: const Color(0xFF000000))),
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
                                child: Stack(children: [
                                  Positioned(
                                    left: 5.833343505859375,
                                    top: 4.375,
                                    child: SvgPicture.string(_kSvgVector,
                                        width: 23.33,
                                        height: 26.25,
                                        fit: BoxFit.contain),
                                  )
                                ])),
                          )
                        ])),
                  ),
                )
              ]))),
    );
  }
}
