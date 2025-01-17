import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  final String hintText;
  final ValueChanged callback;

  const MyTextForm({
    super.key,
    required this.callback,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3.0,
                  ),
                ),
              ),
              onChanged: callback),
        ),
      ],
    );
  }
}
