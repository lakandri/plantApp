import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String titleName;
  final IconData icon;
  final void Function()? onTap;
  const DrawerTile(
      {super.key, required this.titleName, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titleName),
      leading: Icon(icon),
      onTap: onTap,
    );
  }
}
