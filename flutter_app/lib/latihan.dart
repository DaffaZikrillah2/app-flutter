import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen_latihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gambar2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo2.png',
                    height: 51,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'HouseQue',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
