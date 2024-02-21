import 'package:clean_build/core/data/repositories/songs_repository.dart';
import 'package:clean_build/features/home/domain/usecases/get_songs_usecase.dart';
import 'package:clean_build/features/home/presentation/screens/Home.dart';
import 'package:flutter/material.dart';

//https://g.co/gemini/share/a3812d398f16
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins', useMaterial3: true),
        home: HomePage());
  }
}
