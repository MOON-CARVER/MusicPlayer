import 'package:flutter/material.dart';

// class playScreen extends StatelessWidget {
//   const playScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ElevatedButton(child: Icon(Icons.chevron_left), onPressed: () {}),
//     );
//   }
// }

class playScreen extends StatefulWidget {
  const playScreen({super.key});

  @override
  State<playScreen> createState() => _playScreenState();
}

class _playScreenState extends State<playScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(child: Icon(Icons.arrow_drop_down), onPressed: () {}),
    );
  }
}
