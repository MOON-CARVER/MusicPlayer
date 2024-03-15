import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Icon(Icons.chevron_left),
            Text('NOW PLAYING'),
            Icon(Hicons.menu_kebab_bold),

            ],
        )
      ],
    )
    );
  }
}
