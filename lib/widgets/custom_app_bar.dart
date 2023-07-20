import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes', style: TextStyle(
          fontSize: 28
        ),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

