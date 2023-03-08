import 'package:flutter/material.dart';

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
            Column(
              children: [
                SingleChildScrollView(
                  child: SafeArea(
                      child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(250, 250),
                    ),
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/espresso1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
