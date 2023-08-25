import 'package:app_gym/screen/navegador.dart';
import 'package:app_gym/widgets/input.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

void main() => runApp(ImcCalculator());

class ImcCalculator extends StatefulWidget {
  ImcCalculator({super.key});

  @override
  State<ImcCalculator> createState() => _ImcCalculatorState();
}

class _ImcCalculatorState extends State<ImcCalculator> {
  TextEditingController masa = TextEditingController();
  TextEditingController altura = TextEditingController();
  double imc = 0;

  String composition(double imc) {
  if (imc < 18.5) {
    return "Peso inferior al normal";
  } else if (imc >= 18.5 && imc <= 24.9) {
    return "Normal";
  } else if (imc >= 25.0 && imc <= 29.9) {
    return "Peso superior al normal";
  } else {
    return "Obesidad";
  }
}

String mensaje = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
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
                  final route = MaterialPageRoute(builder: (context) => const Navegador());
                  Navigator.push(context, route);
                },
                icon: const Icon(Icons.outbond))
          ],
        ),
        body: Center(
          child: ListView(
            children: [
              Input(
                  hintText: "Ingrese su peso",
                  labelText: "Peso",
                  controlador: masa),
              Input(
                  hintText: "Ingrese su altura",
                  labelText: "Altura",
                  controlador: altura),
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
                    child: const Text("Calcular IMC"),
                    onPressed: () {
                      setState(() {
                        double peso = double.parse(masa.text);
                        double alturaa = double.parse(altura.text);

                        imc = peso / (alturaa * alturaa);

                        mensaje = composition(imc);

                        setState(() {});
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(child: Column(
                  children: [
                    Text("IMC: $imc"),
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
