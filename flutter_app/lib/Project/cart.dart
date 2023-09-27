// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CartPageUts extends StatefulWidget {
  const CartPageUts({super.key});

  @override
  State<CartPageUts> createState() => _CartPageUtsState();
}

class _CartPageUtsState extends State<CartPageUts> {
  int sepatu = 0;
  int harga_sepatu = 0;

  int kacaMata = 0;
  int harga_kacaMata = 0;

  int hoddie = 0;
  int harga_hoddie = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          child: Column(
            children: [
              _Header(context),
              SizedBox(height: 32),
              _Jumbotron(),
              SizedBox(height: 24),
              Sepatu(),
              SizedBox(height: 24),
              KacaMata(),
              SizedBox(height: 24),
              Hoddie(),
              SizedBox(height: 96),
              _HArga(screenWidth)
            ],
          ),
        ),
      ),
    );
  }

  Container _HArga(double screenWidth) {
    return Container(
      width: screenWidth,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                  color: Color(0xff292D32).withOpacity(0.7),
                  fontSize: 16,
                ),
              ),
              Text(
                '${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp.', decimalDigits: 0).format(harga_sepatu + harga_kacaMata + harga_hoddie)}',
                style: TextStyle(
                  color: Color(0xff292D32),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ongkir',
                style: TextStyle(
                  color: Color(0xff292D32).withOpacity(0.7),
                  fontSize: 16,
                ),
              ),
              Text(
                'Rp.14.000',
                style: TextStyle(
                  color: Color(0xff292D32),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  color: Color(0xff292D32).withOpacity(0.7),
                  fontSize: 16,
                ),
              ),
              Text(
                '${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp.', decimalDigits: 0).format(harga_sepatu + 14000 + harga_kacaMata + harga_hoddie)}',
                style: TextStyle(
                  color: Color(0xff292D32),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.only(bottom: 18),
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Color(0xff00B14F),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {
                _showConfirmationDialog(context);
              },
              child: Text(
                'Tambah Keranjang',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sukses'),
          content: Text('Success menambahkan ke keranjang'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
          ],
        );
      },
    );
  }

  Widget Sepatu() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/Rectangle 4 (1).png',
                  width: 100, height: 100),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Balance 992 ...',
                    style: TextStyle(
                      color: Color(0xff292D32),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '40',
                    style: TextStyle(
                      color: Color(0xff292D32).withOpacity(0.7),
                      fontSize: 12.8,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Rp1.240.000',
                    style: TextStyle(
                      color: Color(0xff292D32),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.only(),/
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Color(0xffF2F2F7),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (sepatu > 0) {
                      setState(() {
                        sepatu = sepatu - 1;
                        harga_sepatu = harga_sepatu - 1240000;
                      });
                    }
                  },
                  child: Icon(
                    Iconsax.minus,
                    size: 20,
                  ),
                ),
                SizedBox(width: 16),
                Text(sepatu.toString()),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // if (sepatu < harga_sepatu.length - 1) {
                    // }
                    setState(() {
                      sepatu = sepatu + 1;
                      harga_sepatu = harga_sepatu + 1240000;
                    });
                  },
                  child: Icon(
                    Iconsax.add,
                    size: 20,
                    color: Color(0xff00B14F),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget KacaMata() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/Rectangle 4 (3).png',
                  width: 100, height: 100),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kacamata Baca ...',
                    style: TextStyle(
                      color: Color(0xff292D32),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '-2 Hitam',
                    style: TextStyle(
                      color: Color(0xff292D32).withOpacity(0.7),
                      fontSize: 12.8,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Rp450.000',
                    style: TextStyle(
                      color: Color(0xff292D32),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.only(),/
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Color(0xffF2F2F7),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (kacaMata > 0) {
                      setState(() {
                        kacaMata = kacaMata - 1;
                        harga_kacaMata = harga_kacaMata - 450000;
                      });
                    }
                  },
                  child: Icon(
                    Iconsax.minus,
                    size: 20,
                  ),
                ),
                SizedBox(width: 16),
                Text(kacaMata.toString()),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      kacaMata = kacaMata + 1;
                      harga_kacaMata = harga_kacaMata + 450000;
                    });
                  },
                  child: Icon(
                    Iconsax.add,
                    size: 20,
                    color: Color(0xff00B14F),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Hoddie() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/Rectangle 4 (5).png',
                  width: 100, height: 100),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Human Greatness ...',
                    style: TextStyle(
                      color: Color(0xff292D32),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'XL, Hitam',
                    style: TextStyle(
                      color: Color(0xff292D32).withOpacity(0.7),
                      fontSize: 12.8,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Rp165.900',
                    style: TextStyle(
                      color: Color(0xff292D32),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.only(),/
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: Color(0xffF2F2F7),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (hoddie > 0) {
                      setState(() {
                        hoddie = hoddie - 1;
                        harga_hoddie = harga_hoddie - 230000;
                      });
                    }
                  },
                  child: Icon(
                    Iconsax.minus,
                    size: 20,
                  ),
                ),
                SizedBox(width: 16),
                Text(hoddie.toString()),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      hoddie = hoddie + 1;
                      harga_hoddie = harga_hoddie + 230000;
                    });
                  },
                  child: Icon(
                    Iconsax.add,
                    size: 20,
                    color: Color(0xff00B14F),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _Jumbotron() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffF2F2F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              Wrap(
                children: [
                  Icon(
                    Iconsax.location,
                    size: 20,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dikirim ke',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff292D32).withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Jakarta, Cibubur, Kota Wisata \nMadrid No 23',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff292D32),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            'ubah',
            style: TextStyle(
              color: Color(0xff00B14F),
            ),
          )
        ],
      ),
    );
  }

  Row _Header(BuildContext context) {
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
          'Keranjang',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xff292D32)),
        ),
        Image.asset('kntol.png')
      ],
    );
  }
}
