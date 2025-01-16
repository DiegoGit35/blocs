import 'package:flutter/material.dart';

class GenericAppbar extends StatelessWidget implements PreferredSizeWidget {
  const GenericAppbar({super.key, required this.title});
  final String title;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueGrey,
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
