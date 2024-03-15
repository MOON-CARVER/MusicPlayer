import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('M E L O P H I L E'),
        ),
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
        ));
  }
}
