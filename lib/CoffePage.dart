import 'package:flutter/material.dart';
import 'SizePage.dart';

class CoffePage extends StatefulWidget {
  const CoffePage({super.key});

  @override
  State<CoffePage> createState() => _CoffePageState();
}

class _CoffePageState extends State<CoffePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Coffe Page',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/espresso.webp'),
                      fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 3,
                    )),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SizePage()));
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/espresso1.jpeg'))),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  'Espresso',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Enjoy your Coffee with fresh \n   beans from Guatemala',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.brown,
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/espresso1.jpeg',
                      scale: 1,
                    ),
                    title: Center(
                      child: Text(
                        'Espresso',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    subtitle: Text(
                      'Enjoy your coffee which made from fresh Guatemalan beans...',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
