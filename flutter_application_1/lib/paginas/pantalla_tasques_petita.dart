import 'package:flutter/material.dart';
import 'package:flutter_application_1/colores.dart';
import 'package:flutter_application_1/components/dialog_novaTasca.dart';
import 'package:flutter_application_1/components/item_tasca.dart';

class PantallaTasquesPetita extends StatefulWidget {
  const PantallaTasquesPetita({super.key});

  @override
  State<PantallaTasquesPetita> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PantallaTasquesPetita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.principal,
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 5,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ]
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, Index) {
                return ItemTasca(
                  valorText: Index.toString(),
                );
                
              },
              
                
              ),
          ),
          Text("Pantalla Petita", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              obreDialogNovaTasca(context);
            },
            child: const Icon(Icons.add),
            backgroundColor: Colores.secundario,
            shape: CircleBorder(),
            
          ),
          SizedBox(height: 16), // Espacio entre los botones
          FloatingActionButton(
            onPressed: () {
              // Acción del segundo botón
              print('Segundo botón presionado');
            },
            child: const Icon(Icons.edit),
            backgroundColor: Colors.green,
            shape: CircleBorder(),
          ),
        ],
        
      ),
    );
  }
  void obreDialogNovaTasca(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DialogNovatasca();
      },
    );
  }
}
