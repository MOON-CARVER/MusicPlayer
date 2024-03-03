import 'package:firebase_getx/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade800.withOpacity(0.8)
          ],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('M E L O P H I L E'),
              leading: const Icon(Icons.menu_book_rounded),
            ),
            bottomNavigationBar: GoogleBottomBar(),
            body: Column(
              children: [
                Text(
                  'Hello, World!',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            )),
      ),
    );
  }
}

// class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const _CustomAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.purple,
//       title: Text(
//         'M E L O P H I L E',
//       ),
//       //app bar properties ,and icons
//       // elevation: 0,
//       leading: const Icon(Icons.grid_view_rounded),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56.0);
// }
