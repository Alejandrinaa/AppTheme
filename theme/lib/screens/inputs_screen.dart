import 'package:flutter/material.dart';

import '../widgets/custom_input_fiel.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Alejandrina',
      'last_name': 'Valdovinos',
      'email': 'Alejandrina@gmail.com',
      'password': '123454',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre de usuario',
                      formProperty: 'first_name',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido usuario',
                      formProperty: 'last_name',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Correo',
                      hintText: 'correo@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Av_v23',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Dropdownd
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Superuser',
                          child: Text('Superuser'),
                        ),
                        DropdownMenuItem(
                          value: 'Developer',
                          child: Text('Developer'),
                        ),
                        DropdownMenuItem(
                          value: 'Jr Developer',
                          child: Text('Jr Developer'),
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());

                          if (!myFormKey.currentState!.validate()) {
                            print('Formulario no válido');
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                            width:
                                90, // Ancho del botón   width: double.infinity,
                            height: 30,
                            child: Center(child: Text('Guardar'))))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
