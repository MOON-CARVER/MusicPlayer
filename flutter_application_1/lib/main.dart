import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
      title: 'M E L O P H I L E',
      theme: ThemeData(
        
        scaffoldBackgroundColor: const Color(0xFF1c1b1b),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF42C83C)),
        useMaterial3: true,

         iconTheme: IconThemeData(
      color: Colors.white,
      ),
      
      ) 
      );
}
