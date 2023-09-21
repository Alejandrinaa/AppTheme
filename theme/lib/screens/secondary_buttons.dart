import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/checkbox.dart';

class SecondaryButtons extends StatelessWidget {
  const SecondaryButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Secondary Buttons'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add), // Icono del botón
                  label: const Text('Agregar empleados'),
                  style: AppTheme.secondaryButtons() // Texto del botón
                  ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(
                style: AppTheme.secondaryButtons(),
                onPressed: () {},
                child: const Text('Agregar empleados'),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add), // Icono del botón
                label: const Text('Agregar'),
                style: AppTheme.secondaryButtons(),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('CANCELAR'),
                  ),
                  const CheckboxExample(),
                  const SwitchExample(),
                  //const RadioExample(),
                ],
              ),
            ],
          ),
        ));
  }
}
