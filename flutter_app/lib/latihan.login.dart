// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class latihanLoginn extends StatefulWidget {
  @override
  State<latihanLoginn> createState() => _latihanLoginState();
}

class _latihanLoginState extends State<latihanLoginn> {
  void SercurePass() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  bool isObscured = true;

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _Logo(),
                SizedBox(height: 54),
                Column(
                  children: [
                    _formEmail(screenWidth),
                    SizedBox(height: 20),
                    _formPAssword(screenWidth),
                    SizedBox(height: 50),
                    Button(screenWidth)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column Button(double screenWidth) {
    return Column(
      children: [
        Container(
          height: 50,
          width: screenWidth,
          decoration: BoxDecoration(
              color: Color(0xff5468FF),
              borderRadius: BorderRadius.circular(60)),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Log in',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffF8F8F8)),
              )),
        ),
        SizedBox(height: 16),
        Container(
          height: 50,
          width: screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Color(0xffD3D3D3))),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Create New Account',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffCFCFCF)),
              )),
        ),
      ],
    );
  }

  Column _formPAssword(double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: GoogleFonts.openSans(
              color: Color(0xff17171A), fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 6),
        Container(
          height: 56,
          width: screenWidth,
          padding: EdgeInsets.only(right: 20, left: 20, top: 2),
          decoration: BoxDecoration(
              color: Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(70)),
          child: TextFormField(
            style:
                GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w600),
            obscureText: isObscured ? true : false,
            decoration: InputDecoration(
              hintText: 'Password',
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                onTap: () {
                  SercurePass();
                },
                child: Icon(
                    isObscured
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 24),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _formEmail(double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
          style: GoogleFonts.openSans(
              color: Color(0xff17171A), fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 6),
        Container(
          height: 56,
          width: screenWidth,
          padding: EdgeInsets.only(right: 20, left: 20, top: 2),
          decoration: BoxDecoration(
              color: Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(70)),
          child: TextFormField(
            style:
                GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              hintText: 'Email',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Center _Logo() {
    return Center(
      child: Container(
        height: 280,
        child: Image.asset('hero.png'),
      ),
    );
  }
}
