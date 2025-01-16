import 'package:blocs/colors_bloc/color_cubit.dart';
import 'package:blocs/widgets/generic_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(title: "Color Random"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 100,
                width: 100,
                child: BlocBuilder<ColorCubit, MaterialAccentColor>(
                  builder: (_, color) {
                    return ColoredBox(color: color);
                  },
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ColorCubit>().changeColor();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
