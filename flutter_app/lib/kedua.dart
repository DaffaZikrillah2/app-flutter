// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class kedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Container(
                    height: 267,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 500,
                          child: Image.asset(
                            'assets/ampat_2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 500,
                          child: Image.asset(
                            'assets/raja_ampat.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  _judul(),
                  SizedBox(
                    height: 24,
                  ),
                  _Action(),
                  SizedBox(
                    height: 24,
                  ),
                  _text(),
                  SizedBox(
                    height: 100,
                  ),
                  _Button(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _Button() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Container(
        height: 48,
        width: 200,
        child: TextButton(
            onPressed: () {},
            child: Text(
              'Buy Tickets Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Padding _text() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            'Kabupaten Raja Ampat adalah salah satu kabupaten di provinsi Papua Barat Daya, Indonesia. Ibukota kabupaten ini terletak di Waisai. Kabupaten ini memiliki 610 pulau, termasuk kepulauan Raja Ampat. Empat di antaranya, yakni Pulau Misool, Salawati, Batanta dan Waigeo, merupakan pulau-pulau besar. Dari seluruh pulau hanya 35 pulau yang berpenghuni sedangkan pulau lainnya tidak berpenghuni dan sebagian besar belum memiliki nama. Kabupaten ini memiliki total luas 67.379,60 km² dengan rincian luas daratan 7.559,60 km² dan luas lautan 59.820,00 km².',
            style: TextStyle(fontSize: 16, height: 120 / 100),
            textAlign: TextAlign.justify,
          ),
          Text(
            '\nKabupaten Raja Ampat adalah salah satu kabupaten di provinsi Papua Barat Daya, Indonesia. Ibukota kabupaten ini terletak di Waisai. Kabupaten ini memiliki 610 pulau, termasuk kepulauan Raja Ampat. Empat di antaranya, yakni Pulau Misool, Salawati, Batanta dan Waigeo, merupakan pulau-pulau besar. Dari seluruh pulau hanya 35 pulau yang berpenghuni sedangkan pulau lainnya tidak berpenghuni dan sebagian besar belum memiliki nama. Kabupaten ini memiliki total luas 67.379,60 km² dengan rincian luas daratan 7.559,60 km² dan luas lautan 59.820,00 km².',
            style: TextStyle(fontSize: 16, height: 120 / 100),
          )
        ],
      ),
    );
  }

  Padding _Action() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Contact',
                style: TextStyle(
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.map,
                color: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Map',
                style: TextStyle(
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Share',
                style: TextStyle(
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding _judul() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Raja Ampat',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 6),
              Text(
                'West Papua',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 6,
              ),
              Text('5.0')
            ],
          ),
        ],
      ),
    );
  }

  // Image _Gambar() {
  //   return;
  // }
}
