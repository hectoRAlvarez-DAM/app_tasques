import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/boton_dialog.dart';
import 'package:flutter_application_1/components/textFieldPerso.dart';

class DialogNovatasca extends StatelessWidget {
  const DialogNovatasca({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),  
        side: BorderSide(color: Colors.blueAccent, width: 2),
      ),
        title: const Text('Nova Tasca'),
        content: Container(
          
          width: double.maxFinite,
          height: 200,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Textfieldperso(),
              SizedBox(height: 20), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotonDialog(
                    textBoto: 'tanca',
                    colorBoto: Colors.deepOrangeAccent, 
                    accionBoto:  () {
                    tancarDialog(context);
                  },
                  ),
                  BotonDialog(
                    textBoto: 'guardar', 
                    colorBoto: Colors.green, 
                    accionBoto:  () {
                    guardarTasca();
                  },
                  ),
                ],
              ),
            ],
          ),
        ),
        
    );

  }
  void guardarTasca() {
    // Lógica para guardar la nueva tarea

  }
  void tancarDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}