import 'package:app_gym/screen/navegador.dart';
import 'package:app_gym/widgets/dietas.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Dieta());

class Dieta extends StatefulWidget {
  const Dieta({super.key});

  @override
  State<Dieta> createState() => _DietaState();
}

class _DietaState extends State<Dieta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym app',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
          ),
          title: const Text(
            "Dieta",
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
            shrinkWrap: true,
            children: [
              DietaItem(
                  link:
                      "https://images.freeimages.com/images/premium/previews/5250/5250032-healthy-breakfast.jpg",
                  title: "Desayuno",
                  description:
                      "Manzana: Una fruta rica en fibra y antioxidantes que es ideal para comenzar el día con energía. \nPollo a la parrilla: Una excelente fuente de proteínas magras que ayuda en la construcción muscular.\nQuinoa: Un grano completo que proporciona carbohidratos de calidad y es rico en nutrientes esenciales\nBrócoli: Una verdura crucífera llena de vitaminas y minerales que contribuye a una dieta saludable.\nSalmón: Un pescado rico en ácidos grasos omega-3 que benefician la salud cardiovascular y cerebral."),
              DietaItem(
                link:
                    "https://www.pinclipart.com/picdir/big/12-120861_la-comida-pptx-imagen-de-almuerzo-png-clipart.png",
                title: "Almuerzo",
                description:
                    "Ensalada de pollo: Una combinación saludable de verduras frescas y trozos de pollo a la parrilla.\nArroz integral: Una excelente fuente de carbohidratos de liberación lenta que proporciona energía constante.\nHuevos cocidos: Ricos en proteínas y nutrientes esenciales.\nAguacate: Una fuente de grasas saludables y vitaminas.\nFrutas mixtas: Una variedad de frutas frescas para un postre nutritivo.",
              ),
              DietaItem(
                link:
                    "https://www.quia.com/files/quia/users/r_aldridge/Food/la_cena_clip_art",
                title: "Cena",
                description:
                    "Salmón a la parrilla: Una porción de salmón magro a la parrilla, rico en proteínas y ácidos grasos omega-3.\nBrócoli al vapor: Una guarnición nutritiva llena de vitaminas y fibra.\nBatata: Una fuente de carbohidratos complejos y nutrientes.\nEnsalada mixta: Una combinación de verduras frescas para una dieta equilibrada.\nTé de hierbas: Una bebida relajante para finalizar el día.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
