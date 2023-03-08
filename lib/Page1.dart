import 'package:flutter/material.dart';
import 'CoffePage.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              )
            ],
            backgroundColor: Colors.transparent,
            title: Text('CoffeShop'),
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/cekirdek.jpeg'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.brown[900]),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.brown[200])),
                          child: Image.asset('assets/images/kahve1.jpeg'),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CoffePage()));
                            });
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CoffePage()));
                            });
                          },
                          child: Text(
                            'Coffee',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.brown[100])),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.brown[900]),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.brown[200])),
                          child: Image.asset('assets/images/frozen.webp'),
                          onPressed: () {},
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Cold Drinks',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.brown[100])),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.brown[900]),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.brown[200])),
                          child: Image.asset('assets/images/cekirdek2.webp'),
                          onPressed: () {},
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Coffe Beans',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.brown[100])),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
