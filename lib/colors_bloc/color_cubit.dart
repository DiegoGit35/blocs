import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorCubit extends Cubit<MaterialAccentColor> {
  ColorCubit(super.initialState);
  List<MaterialAccentColor> colores = <MaterialAccentColor>[
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.amberAccent,
    Colors.deepOrangeAccent,
    Colors.deepPurpleAccent,
    Colors.indigoAccent,
    Colors.limeAccent,
    Colors.pinkAccent,
    Colors.lightGreenAccent,
  ];
  void changeColor() {
    emit(
      colores[Random().nextInt(10)],
    );
  }
}
