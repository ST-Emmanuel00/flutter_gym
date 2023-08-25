import 'package:app_gym/screen/navegador.dart';
import 'package:app_gym/widgets/input.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

void main() => runApp(CaloriasCalculator());

class CaloriasCalculator extends StatefulWidget {
  CaloriasCalculator({super.key});

  @override
  State<CaloriasCalculator> createState() => _CaloriasCalculatorState();
}

class _CaloriasCalculatorState extends State<CaloriasCalculator> {
  TextEditingController desayuno = TextEditingController();
  TextEditingController almuerzo = TextEditingController();
  TextEditingController cena = TextEditingController();
  TextEditingController sexo = TextEditingController();

  String consumoCalorias(String sexo, double calories) {
    if (sexo == "mujer") {
      if (calories < 1600) {
        return "Déficit calórico";
      } else if (calories >= 1600 && calories <= 2000) {
        return "Consumo normal";
      } else {
        return "Consumo Excesivo de calorías";
      }
    } else if (sexo == "male") {
      if (calories < 1600) {
        return "Déficit calórico";
      } else if (calories >= 1600 && calories <= 2000) {
        return "Consumo normal";
      } else {
        return "Consumo Excesivo de calorías";
      }
    } else {
      return "Género no válido";
    }
  }

  String mensaje = "";

  double caloriasTotales = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorias',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
          ),
          title: const Text(
            "IMC",
            style: TextStyle(
              color: Color.fromRGBO(0, 26, 78, 1),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const Navegador());
                  Navigator.push(context, route);
                },
                icon: const Icon(Icons.outbond))
          ],
        ),
        body: Center(
          child: ListView(
            children: [
              Input(
                  hintText: "Hombre o mujer",
                  labelText: "Sexo",
                  controlador: sexo),
              Input(
                  hintText: "Calorias desayuno",
                  labelText: "Desayuno",
                  controlador: desayuno),
              Input(
                  hintText: "Calorias almuerzo",
                  labelText: "Almuerzo",
                  controlador: almuerzo),
              Input(
                  hintText: "Calorias cena",
                  labelText: "Cena",
                  controlador: cena),
              Padding(
                padding: AppTheme.selectPading,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(0, 26, 78, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      elevation: 4.0, // Ajusta el valor según tu preferencia
                      minimumSize: const Size(double.infinity,
                          50), // Ancho y alto mínimos del botón
                    ),
                    child: const Text("Calcular calorias"),
                    onPressed: () {
                      setState(() {

                        String sexoo = sexo.text.toLowerCase();
                        caloriasTotales = double.parse(desayuno.text) + double.parse(almuerzo.text) + double.parse(cena.text);
                        mensaje = consumoCalorias(sexoo, caloriasTotales);
                        print(caloriasTotales);
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                    child: Column(
                  children: [
                    Text("Calorias: $caloriasTotales"),
                    Text(mensaje),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

}