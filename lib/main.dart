import 'package:flutter/material.dart';

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
                    image: AssetImage("assets/images/cekirdek1.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.blueGrey,
                width: 300,
                height: 200,
                child: giris(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class giris extends StatefulWidget {
  const giris({super.key});

  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {
  @override
  Widget build(BuildContext context) {
    return Form(key: GlobalKey(),
        child: Column(
      children: [
        TextFormField(
          key: ['karga'],
          decoration: InputDecoration(hintText: 'Kullanıcı Adını Giriniz...'),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Lütfen kullanıcı adı giriniz';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(hintText: 'Şifre Giriniz'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {
            if ;
          }, child: Text('GİRİŞ')),
        )
      ],
    ));
  }
}
