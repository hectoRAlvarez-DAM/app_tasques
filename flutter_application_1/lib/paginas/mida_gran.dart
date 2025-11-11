import 'package:flutter/material.dart';

class MidaGran extends StatefulWidget {
  const MidaGran({super.key});

  @override
  State<MidaGran> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MidaGran> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mida Gran'),
      ),
    );
  }
}