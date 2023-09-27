// ignore_for_file: unused_import, use_full_hex_values_for_flutter_colors, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool SecurePass = true;

  void _SecurePass() {
    setState(() {
      SecurePass == !SecurePass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 120),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _logo(),
              SizedBox(height: 60),
              _Text(),
              SizedBox(height: 60),
              _fromeamil(context),
              SizedBox(height: 24),
              _fromPassword(context),
              SizedBox(height: 6),
              _forgotmypassword(),
              SizedBox(height: 116),
              _SignInBUtton(context),
              SizedBox(height: 24),
              _signup()
            ]),
          ),
        ],
      ),
    );
  }

  Row _signup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have account?',
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          'Sign Up',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }

  Container _SignInBUtton(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color(0xffFCAC15), borderRadius: BorderRadius.circular(16)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Sign In',
            style: GoogleFonts.openSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff6B4909),
            ),
          )),
    );
  }

  Container _forgotmypassword() {
    return Container(
      alignment: Alignment.bottomRight,
      child: Text(
        "Forgot My Password",
        style: GoogleFonts.poppins(color: Color(0xff6F7075)),
      ),
    );
  }

  Container _fromeamil(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 19,
        right: 19,
        top: 4,
      ),
      decoration: BoxDecoration(
          color: Color(0xff262A34), borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
          style: GoogleFonts.openSans(color: Colors.white),
          decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: GoogleFonts.openSans(color: Color(0xff6F7075)),
              border: InputBorder.none)),
    );
  }

  Container _fromPassword(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 19,
        right: 19,
        top: 4,
      ),
      decoration: BoxDecoration(
          color: Color(0xff262A34), borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
          obscureText: SecurePass,
          style: GoogleFonts.openSans(color: Colors.white),
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: _SecurePass,
                child: Icon(
                  SecurePass
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Color(0xff6F7075),
                ),
              ),
              hintText: 'Password',
              hintStyle: GoogleFonts.openSans(color: Color(0xff6F7075)),
              border: InputBorder.none)),
    );
  }

  Text _Text() {
    return Text(
      'Welcome back.\n Let’s make money.',
      style: GoogleFonts.poppins(
          fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
    );
  }

  Container _logo() {
    return Container(
        height: 50,
        child: Image.asset(
          'assets/euro.png',
          fit: BoxFit.cover,
        ));
  }
}
