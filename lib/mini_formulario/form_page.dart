import 'package:blocs/mini_formulario/form_cubit.dart';
import 'package:blocs/widgets/generic_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GenericAppbar(title: "Formulario con cubit"),
      body: ListView(
        children: [
          Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Escriba algo...",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1.0),
                    ),
                  ),
                  onChanged: (value) {
                    context.read<FormCubit>().changeString(value);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 51,
            width: 200,
            child: BlocBuilder<FormCubit, String>(
              builder: (_, items) {
                return Text(items);
              },
            ),
          ),
        ],
      ),
    );
  }
}
