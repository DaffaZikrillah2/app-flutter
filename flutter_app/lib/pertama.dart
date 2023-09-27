import 'package:flutter/material.dart';

class pertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('daffa'),
        SizedBox(height: 24),
        Image.asset('assets/Screenshot 2023-07-26 103544.png'),
        SizedBox(height: 16),
        Row(
          children: [Text('zirkillah'), SizedBox(width: 6), Text('daffa')],
        ),
        Container(
          height: 50,
          width: 150,
          child: Text(
            'kelas 11',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12)),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 48,
          width: 150,
          child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'ini button',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)),
        )
      ],
    ));
  }
}
