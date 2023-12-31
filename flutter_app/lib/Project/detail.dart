// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'cart.dart';

class DetailPapgeUts extends StatefulWidget {
  final String images;
  final String textDesc;
  final String harga;

  DetailPapgeUts({
    required this.images,
    required this.textDesc,
    required this.harga,
  });
  @override
  State<DetailPapgeUts> createState() => _DetailPapgeUtsState();
}

class _DetailPapgeUtsState extends State<DetailPapgeUts> {
  @override
  bool test = true;
  int selcetindex = 0;
  Widget build(BuildContext context) {
    final images = widget.images;
    final textDesc = widget.textDesc;
    final harga = widget.harga;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
              child: Column(
                children: [
                  _header(context),
                  SizedBox(height: 32),
                  _detail(screenWidth, images, textDesc),
                  SizedBox(height: 16),
                ],
              ),
            ),
            _Footer(harga)
          ],
        ),
      ),
    );
  }

  Column _detail(double screenWidth, String images, String textDesc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth,
          height: 382,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image:
                DecorationImage(image: AssetImage(images), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 24),
        Text(
          textDesc,
          style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xff292D32)),
        ),
        SizedBox(height: 11),
        Row(
          children: [
            Icon(
              Iconsax.star1,
              size: 20,
              color: Color(0xffFFC400),
            ),
            SizedBox(width: 6),
            Text(
              '4.8',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 6),
            Text(
              '(102) |',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32).withOpacity(0.7)),
            ),
            SizedBox(width: 6),
            Text(
              '67 ulasan',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292D32).withOpacity(0.7)),
            ),
          ],
        ),
        SizedBox(height: 16),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin... ",
                style: TextStyle(
                  color: const Color.fromARGB(151, 0, 0, 0),
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: "Baca selengkapnya",
                style: TextStyle(
                  color: Color(0xff00B14F),
                  fontSize: 16,

                  // TextDecoration.underline, // Garis bawah tautan
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Pilih Ukuran',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff292D32),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _Option(0, 39),
            _Option(1, 40),
            _Option(2, 41),
            _Option(3, 42),
            _Option(4, 43),
          ],
        )
      ],
    );
  }

  Container _Footer(String harga) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            harga,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xff292D32),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return CartPageUts();
                },
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                color: Color(0xff00B14F),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Tambah Keranjang',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _Option(int index, int text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selcetindex = index;
        });
      },
      child: Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16, top: 16),
        decoration: BoxDecoration(
          color: selcetindex == index
              ? Color(0xff00B14F).withOpacity(0.1)
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: selcetindex == index
                ? Color(0xff00B14F)
                : const Color.fromARGB(232, 224, 224, 224),
          ),
        ),
        child: Center(
          child: Text(
            text.toString(),
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: selcetindex == index
                    ? Color(0xff00B14F)
                    : Color.fromARGB(177, 41, 45, 50)),
          ),
        ),
      ),
    );
  }

  Row _header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Iconsax.arrow_left,
            size: 26,
          ),
        ),
        Text(
          'Detail Product',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xff292D32)),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              test = !test;
            });
          },
          child: Icon(
            test ? Iconsax.heart5 : Iconsax.heart,
            color: Colors.red.shade600,
          ),
        ),
      ],
    );
  }
}
