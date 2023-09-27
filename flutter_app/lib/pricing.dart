// ignore_for_file: unused_import, use_full_hex_values_for_flutter_colors, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, camel_case_types
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingScreen extends StatefulWidget {
  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 60),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/mahkota.png',
                height: 100,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'Which one you wish \n to Upgrade?',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget Option(
        int Index, String imageUrl, String title, String desc, String subDesc) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = Index;
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(
                  color: selectedIndex == Index
                      ? Color(0xff6050E7)
                      : Color.fromARGB(255, 175, 182, 200)),
              borderRadius: BorderRadius.circular(39)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 6),
                child: Image.asset(
                  imageUrl,
                  height: 64,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          desc,
                          style: GoogleFonts.poppins(
                              color: Color(0xffa3a8b8),
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          subDesc,
                          style: GoogleFonts.poppins(color: Color(0xff5343C2)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190),
                child: selectedIndex == Index
                    ? Image.asset(
                        'assets/ceklis.png',
                        height: 24,
                      )
                    : SizedBox(),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          height: 70,
          color: Color(0xff6050E7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upgrade Now",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: 50,
              ),
              Option(0, 'assets/babi.png', 'Money Security', 'Support', '24/7'),
              SizedBox(
                height: 24,
              ),
              Option(
                  1, 'assets/nota.png', 'Automation', 'We Provide', 'Invoice'),
              SizedBox(
                height: 24,
              ),
              Option(2, 'assets/koin.png', 'Balance Report', 'Can Up To', '10k')
            ],
          ),
        ));
  }
}
