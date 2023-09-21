// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fl_components/theme/app_theme.dart';

/// CalendarioDataPiker


class CalendarioDataPiker extends StatefulWidget {
  DateTime? fechaSeleccionada;
  final Function(DateTime)? onFechaSeleccionada;

  final bool? permitirDiasPosteriores; //Bloquear seleccion de fecha
  final bool permitirDiasAnteriores; //Bloquear seleccion de fecha

  final DateTime? fechaMaximaSeleccion; //Fecha inicio seleccion calendario
  final DateTime? fechaMinimaSeleccion; //Fecha inicio seleccion calendario

  CalendarioDataPiker({
    super.key,
    this.fechaSeleccionada,
    this.onFechaSeleccionada,
    this.permitirDiasPosteriores = true,
    this.permitirDiasAnteriores = true,
    this.fechaMaximaSeleccion,
    this.fechaMinimaSeleccion,
  });

  @override
  State<CalendarioDataPiker> createState() => _CalendarioDataPikerState();
}

class _CalendarioDataPikerState extends State<CalendarioDataPiker> {
  //late DateTime fechaInicioTemporada;
  //late DateTime fechaFinTemporada;

  DateTime? selectedDate;
  DateFormat dateFormatter = DateFormat('dd MMM yyyy');

  Future<void> getDescripcionTemporada() async {
    //var descripcion = await Agtrc001Service().getDescripcionAndIdTemporada();

   

    // Actualiza la variable fechaFinTemporada en el estado del widget
    setState(() {});
  }

  @override
  void initState() {
    getDescripcionTemporada();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.fechaSeleccionada = widget.fechaSeleccionada;
    // widget.fechaSeleccionada = widget.permitirDiasPosteriores!
    //     ? widget.fechaSeleccionada
    //     : widget.fechaMaximaSeleccion ?? DateTime.now();

    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              helpText: 'Seleccionar fecha',
              cancelText: 'Cancelar',
              confirmText: 'Aceptar',

              //! Valor seleccionado inicial - si no manda datos toma el de hoy
              initialDate: widget.fechaSeleccionada ?? DateTime.now(),
              // initialDate: widget.permitirDiasPosteriores!
              //     ? widget.fechaSeleccionada ?? DateTime.now()
              //     : DateTime.now(),

              //! Fecha mas antigua que se puede seleccionar
              //? Si esta activa la temporda inicia con los datos, si son null empiesa del 2021
              firstDate: DateTime(DateTime.now().year),

              //! Fecha maxima que se puede seleccionar
              lastDate: DateTime.now().add(const Duration(days: 90)),
              //! false = fecha maxima hoy
            ).then((selectedDate) {
              //! Si la fecha seleccionada no es nula guarda los datos en onFechaSeleccionada
              if (selectedDate != null) {
                widget.onFechaSeleccionada!(selectedDate);
              }
            });
          },
          style: AppTheme.secondaryButtons(),
          child: Row(
            children: [
              Text(
                selectedDate != null
                    ? dateFormatter.format(selectedDate!)
                    : dateFormatter
                        .format(widget.fechaSeleccionada ?? DateTime.now()),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.date_range,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
