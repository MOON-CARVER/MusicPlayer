import 'package:flutter/material.dart';

import 'package:mitch_kokos/components/my_drawer.dart';
import 'package:mitch_kokos/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("M E L O P H I L E"),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Text('Hello', style: Theme.of(context).textTheme.bodyText1),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
            Text('Hellow'),
          ],
        ));
  }
}
