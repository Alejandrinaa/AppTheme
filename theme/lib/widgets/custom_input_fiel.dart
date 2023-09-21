import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        obscureText: obscureText,
        initialValue: ' ',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        //capturar el valor
        onChanged: (value) => formValues[formProperty] =
            value, // guardar los valores del formulario
        // validacion que el usuario ingrese texto
        validator: (value) {
          if (value == null) return 'Este campo es obligatorio';
          return value.length < 3 ? 'Debe incluir mas de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          helperText: helperText,
          labelText: labelText,
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
