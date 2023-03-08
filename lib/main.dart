import 'package:flutter/material.dart';

import 'giris.dart';
import 'Page1.dart';
import 'CoffePage.dart';

void main() {
  runApp(kahveci());
}

class kahveci extends StatefulWidget {
  const kahveci({super.key});

  @override
  State<kahveci> createState() => _kahveciState();
}

class _kahveciState extends State<kahveci> {
  List kullanici = ['karga'];
  List sifre = ['123asd'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cekirdek.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/kahve1.jpeg'),
                        radius: 70,
                      ),
                      giris()
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
