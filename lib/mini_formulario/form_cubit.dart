import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormCubit extends Cubit<String> {
  FormCubit(super.initialState);

  void changeString(String value) {
    if (value.isNotEmpty) {
      emit(value);
    } else {
      emit('');
    }
  }
}
