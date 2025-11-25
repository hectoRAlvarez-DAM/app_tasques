import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/boton_dialog.dart';

class DialogNovatasca extends StatelessWidget {
  const DialogNovatasca({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Nova Tasca'),
        content: Container(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Introdueix la nova tasca',
                ),

              ),
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