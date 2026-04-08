import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: Stack(children: [
                    Positioned(
                      left: 505,
                      width: 430,
                      top: 390,
                      height: 54,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
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
                  ]))),
        ),
      ),
    );
  }
}
