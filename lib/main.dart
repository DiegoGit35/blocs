import 'package:blocs/colors_bloc/color_cubit.dart';
import 'package:blocs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/my_custom_elevated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorCubit>(
      create: (_) => ColorCubit(Colors.redAccent),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RouteGenerator.homePage,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Cubit",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        children: [
          MyCustomElevatedButton(
            text: 'Color Random',
            icon: Icons.published_with_changes_outlined,
            onPressed: () {
              Navigator.of(context).pushNamed(RouteGenerator.colorPage);
            },
          ),
          SizedBox(
            height: 20,
          ),
          MyCustomElevatedButton(
            text: 'Fomulario con cubit',
            icon: Icons.note_alt,
            onPressed: () {
              Navigator.of(context).pushNamed(RouteGenerator.formPage);
            },
          ),
        ],
      ),
    );
  }
}
