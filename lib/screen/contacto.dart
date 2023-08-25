import 'package:app_gym/screen/navegador.dart';
import 'package:app_gym/widgets/input.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

void main() => runApp(Contactanos());

class Contactanos extends StatefulWidget {
  Contactanos({super.key});

  @override
  State<Contactanos> createState() => _ContactanosState();
}

class _ContactanosState extends State<Contactanos> {
  String mensaje = "";

  TextEditingController correo = TextEditingController();
  TextEditingController nombre = TextEditingController();
  TextEditingController celular = TextEditingController();

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
                  hintText: "Ingrese su correo",
                  labelText: "Correo",
                  controlador: correo),
              Input(
                  hintText: "Ingrese su nombre",
                  labelText: "Nombre",
                  controlador: nombre),
              Input(
                  hintText: "Ingrese su Celular",
                  labelText: "Celular",
                  controlador: celular),
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
                    child: const Text("Enviar"),
                    onPressed: () {
                      setState(() {
                        print("Correo: ${correo.text}");
                        print("Nombre: ${nombre.text}");

                        print("Celular: ${celular.text}");

                        mensaje = "Enviado";

            
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                    child: Column(
                  children: [
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
