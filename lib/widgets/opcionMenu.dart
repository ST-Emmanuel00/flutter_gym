import 'package:flutter/material.dart';


// inicio widget de opcion

class Opcion extends StatelessWidget {
  final String titulo;
  final Widget widget;
  final IconData? icono;

  const Opcion({
    super.key,
    required this.titulo,
    required this.widget,
    this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Text(titulo),
          leading: Icon(
            icono,
            color: const Color.fromRGBO(0, 26, 78, 1),
          ),
          trailing:
              const Icon(Icons.navigate_next), // Icono en la parte derecha

          onTap: () {
            final route = MaterialPageRoute(builder: (context) => widget);
            Navigator.push(context, route);
          },
        ),
      ),
    );
  }
}
// fin widget de opcion
