import 'package:app_gym/screen/calorias.dart';
import 'package:app_gym/screen/contacto.dart';
import 'package:app_gym/screen/imc.dart';
import 'package:app_gym/screen/presionArterial.dart';
import 'package:app_gym/screen/rutina.dart';
import 'package:app_gym/widgets/opcionMenu.dart';

import 'package:flutter/material.dart';

import 'dieta.dart';

void main() => runApp(const Navegador());

class Navegador extends StatelessWidget {
  const Navegador({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manu',
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(24.0),
          child: ListView(children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Container(
                  height: 100,
                  child: Image.network(
                      "https://th.bing.com/th/id/OIP.pgCBFxe4iXT2hawMUrpt1AHaHa?pid=ImgDet&rs=1")),
            ),
            const Opcion(titulo: "Dieta", widget: Dieta()),
            Opcion(
              titulo: "IMC",
              widget: ImcCalculator(),
            ),
            Opcion(titulo: "Calorias", widget: CaloriasCalculator()),
            Opcion(titulo: "Rutina", widget: RutinaVideos()),
            Opcion(titulo: "Precion arterial", widget: presionCalculator()),
            Opcion(titulo: "Contacto", widget: Contactanos())
          ]),
        ),
      ),
    );
  }
}
