import 'package:flutter/material.dart';

class BotonDialog extends StatelessWidget {

  final String textBoto;
  final Color colorBoto;
  final Icon icnonaBoto;
  final Function() accionBoto;
  const BotonDialog({
    super.key,
    required this.textBoto,
    required this.colorBoto,
    this.icnonaBoto = const Icon(Icons.add),
    required this.accionBoto,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: accionBoto,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: colorBoto,
          borderRadius: BorderRadius.circular(10),  
          ),
        height: 100,
        width: 100,
        child: Row(
          children: [
            Icon(Icons.add),
            SizedBox(width: 8),
            Text(textBoto),
            
          ],
        ),
      ),
    );
  }
}