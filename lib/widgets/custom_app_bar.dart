import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(
          fontSize: 28,
        ),),
        const Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}

