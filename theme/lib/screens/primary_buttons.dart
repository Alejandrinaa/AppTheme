import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class PrimaryButtons extends StatelessWidget {
  const PrimaryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: BreadCrumb(
            items: [
              BreadCrumbItem(
                  content: TextButton(
                onPressed: () => Navigator.pop(context),
                style: AppTheme.breadButtons(),
                child: const Text('HOME'),
              )),
              BreadCrumbItem(
                  content: const Text(
                'PRIMARY BUTTONS',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
            ],
            divider: const Icon(Icons.chevron_left),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add), // Icono del botón
                  label: const Text('Agregar empleados'),
                  style: AppTheme.primaryButtons() // Texto del botón
                  ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(
                style: AppTheme.primaryButtons(),
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
                style: AppTheme.primaryButtons(),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
            ],
          ),
        ));
  }
}

// hacer hover al boton
/*
class HoverButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  HoverButton({required this.onPressed, required this.text});

  @override
  HoverButtonState createState() => HoverButtonState();
}

class HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isHovered ? Colors.blue : Colors.green,
          ),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
*/
