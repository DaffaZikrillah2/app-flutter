import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff13131E),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 2000),
              child: Column(
                children: [
                  Container(
                    height: 140,
                    child: Image.asset(
                      'assets/001-swords 1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 170,
                  ),
                  Text(
                    'Venture',
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white,
                      fontSize: 32,
                      letterSpacing: 26 / 100,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
