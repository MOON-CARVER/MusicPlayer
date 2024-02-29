import 'package:firebase_getx/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Scaffold(
          appBar: _CustomAppBar(),
          bottomNavigationBar: GoogleBottomBar(),
          body: Column(
            children: [
              Text(
                'Hello, World!',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          )),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'M E L O P H I L E',
      ), //app bar properties ,and icons
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
