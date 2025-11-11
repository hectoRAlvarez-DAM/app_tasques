import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginas/mida_gran.dart';
import 'package:flutter_application_1/paginas/mida_mijana.dart';
import 'package:flutter_application_1/paginas/pantalla_tasques_petita.dart';

void main() {
  runApp(const MainApp());
}
/*
Saber medidas pantalla:   
===========================================
MediaQuery.of(context).size.width

saber orientacion dispositivo:
===========================================
MediaQuery.of(context).orientation

Saber tipo de dispositivo:
===========================================
kIsWeb
Platform.isAndroid
Platform.isIOS
platform.isWindows
Platform.isMacOS

final bool isMobile = Platform.isAndroid || Platform.isIOS;
final bool isDesktop = Platform.isWindows || Platform.isMacOS || Platform.isLinux;  


*/
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);

    
    Widget homeScreen = screenWidth < 600
        ? const PantallaTasquesPetita()
        : screenWidth < 1200
            ? const MidaMijana()
            : const MidaGran();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen,
    );
  }
}
