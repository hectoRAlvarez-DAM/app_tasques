import 'package:flutter/material.dart';

class ItemTasca extends StatefulWidget {
final String valorText;

final bool valorInicialCheckbox;
const ItemTasca({
  super.key,
  this.valorInicialCheckbox = false,
  this.valorText = " ",
});


  

@override
  State<ItemTasca> createState() => _ItemTascaState();
}

class _ItemTascaState extends State<ItemTasca> {

late bool valorCheckbox;
@override
  void initState() {
    // TODO: implement initState

    super.initState();
    valorCheckbox = widget.valorInicialCheckbox;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: Row(
        children: [
          Checkbox(value: valorCheckbox,
          onChanged: (valor){
            setState(() {
              valorCheckbox = valor ?? false;
            });
          },
          ),
          Text(widget.valorText + " - Tasca per fer"),
        ],
      ),
    );
  }
}