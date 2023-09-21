import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [Checkbox].

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      activeColor: const Color.fromRGBO(235, 120, 35, 90),
      hoverColor: const Color.fromARGB(103, 235, 118, 35),
      mouseCursor: SystemMouseCursors.click,
      focusColor: const Color.fromARGB(103, 35, 82, 235),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: const Color.fromRGBO(235, 120, 35, 90),
      hoverColor: const Color.fromARGB(103, 235, 118, 35),
      mouseCursor: SystemMouseCursors.click,
      focusColor: const Color.fromARGB(103, 35, 82, 235),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
