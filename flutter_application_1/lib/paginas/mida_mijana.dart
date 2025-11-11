import 'package:flutter/material.dart';

class MidaMijana extends StatefulWidget {
  const MidaMijana({super.key});

  @override
  State<MidaMijana> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MidaMijana> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mida Mijana'),
      ),
    );
  }
}