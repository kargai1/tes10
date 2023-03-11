import 'package:flutter/material.dart';

class SizePage extends StatefulWidget {
  const SizePage({super.key});

  @override
  State<SizePage> createState() => _SizePageState();
}

class _SizePageState extends State<SizePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.red),
    );
  }
}
