import 'package:flutter/material.dart';

class Textfieldperso extends StatelessWidget {
  const Textfieldperso({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.red,
      cursorWidth: 18,

      style: TextStyle(
        
        color: const Color.fromARGB(255, 236, 3, 3),
        fontSize: 15,
        fontStyle: FontStyle.normal,

      ),
      decoration: InputDecoration(
        hint: Row(
          
          children: [
            Icon(Icons.edit, color: Colors.grey,),
            Text("Introdueix la nova tasca..."
            , style: TextStyle(
              color: const Color.fromARGB(255, 64, 92, 99),
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),),
          ],
        ),
        filled: false,
        fillColor: Colors.green,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.green,
            width: 2,
          ),
        ),
      ),
    );
  }
}