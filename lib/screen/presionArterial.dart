import 'package:app_gym/screen/navegador.dart';
import 'package:app_gym/widgets/input.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

void main() => runApp(presionCalculator());

class presionCalculator extends StatefulWidget {
  presionCalculator({super.key});

  @override
  State<presionCalculator> createState() => _presionCalculatorState();
}

class _presionCalculatorState extends State<presionCalculator> {
  TextEditingController presion = TextEditingController();


  String categoriaPresion(double presion) {
  if (presion < 120) {
    return "Normal";
  } else if (presion >= 120 && presion <= 129) {
    return "Presión arterial alta (sin otros factores de riesgo cardíaco)";
  } else if (presion >= 130 && presion <= 179) {
    return "Presión arterial alta (con otros factores de riesgo cardíaco)";
  } else if (presion >= 180) {
    return "Presión arterial peligrosamente alta - Busque atención médica de inmediato";
  } else {
    return "Valor no válido";
  }
}

String mensaje = "";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presion arterial',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
          ),
          title: const Text(
            "Presion arterial",
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
                  hintText: "Presion arterial",
                  labelText: "Presion",
                  controlador: presion),
              
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
                    child: const Text("Calcular presion"),
                    onPressed: () {
                      setState(() {

                        mensaje = categoriaPresion(double.parse(presion.text));

                        
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                    child: Column(
                  children: [
                    Text("Presion: ${presion.text}"),
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