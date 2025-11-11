import 'package:flutter/material.dart';
import 'package:flutter_application_1/colores.dart';

class PantallaTasquesPetita extends StatefulWidget {
  const PantallaTasquesPetita({super.key});

  @override
  State<PantallaTasquesPetita> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PantallaTasquesPetita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP Tasques - Pantalla Petita',style: TextStyle(color: Color.fromARGB(255, 20, 48, 1)),),
        backgroundColor: Colores.app,
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Color.fromARGB(255, 20, 48, 1),),
            onPressed: () {
              // Acción del botón de configuración
              print('Botón de configuración presionado');
            },
          ),
        ],
      ),
      body: Center(
        child: const Text('Pantalla Tasques Petita'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16),
            child: FloatingActionButton(
              onPressed: () {
                // Acción del primer botón
                print('Primer botón presionado');
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.blue,
              shape: CircleBorder(),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, right: 16),
            child: FloatingActionButton(
              onPressed: () {
                // Acción del segundo botón
                print('Segundo botón presionado');
              },
              child: const Icon(Icons.edit),
              backgroundColor: Colors.green,
              shape: CircleBorder(),
            ),
            
          ),
        ],
        
      ),
    );
  }
}
