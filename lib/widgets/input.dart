import 'package:flutter/material.dart';

import '../theme/theme.dart';

class Input extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextEditingController controlador;
  final Function? funcion;

  final String? initialValue;

  Input({
    super.key,
    required this.hintText,
    required this.labelText,
    this.helperText,
    required this.controlador,
    this.funcion,
    this.initialValue,
  });

  final borde = OutlineInputBorder(borderRadius: BorderRadius.circular(40.0));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.inputPading,
      child: TextFormField(
        autofocus: true,
        initialValue: initialValue, // Input con un calor incial
        textCapitalization: TextCapitalization.characters,
        controller: controlador,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: AppTheme.textStyle,
          helperText: helperText,
          // counterText: '3 Caracteres',
          // prefixIcon: const Icon(Icons.abc_sharp), //Icono interno antes del texto
          // suffixIcon: const Icon(Icons.ac_unit_rounded), //Icono del final
          // icon: const Icon(Icons.accessibility), // Icono fuera de input
          focusColor: const Color.fromRGBO(0, 26, 78, 1),
          enabledBorder: borde.copyWith(borderSide: AppTheme.bordeInicial),
          focusedBorder: borde.copyWith(borderSide: AppTheme.bordeSelecionado),
          errorBorder: borde.copyWith(borderSide: AppTheme.bordeError),
          focusedErrorBorder: borde.copyWith(borderSide: AppTheme.bordeError),
        ),
        onChanged: (value) {
          print('value:$value');
        },
      ),
    );
  }
}
