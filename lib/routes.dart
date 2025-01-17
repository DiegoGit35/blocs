import 'package:blocs/colors_bloc/color_page.dart';
import 'package:blocs/main.dart';
import 'package:blocs/mini_formulario/form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mini_formulario/form_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String colorPage = '/color';
  static const String formPage = '/formulario';

  RouteGenerator._() {}
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(
                  title: 'Color',
                ));
      case colorPage:
        return MaterialPageRoute(
          builder: (_) => const ColorPage(),
        );
      case formPage:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            child: const FormPage(),
            create: (_) => FormCubit(""),
          );
        });
      default:
        throw FormatException('Route not found');
    }
  }
}
