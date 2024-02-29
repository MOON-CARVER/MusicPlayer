import 'package:firebase_getx/consts/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeMode themeMode = ThemeMode.system;
    // Opt in/out on Material 3
    bool useMaterial3 = true;

    const FlexScheme usedScheme = FlexScheme.mandyRed;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('M E L O P H I L E '),
      theme: FlexThemeData.light(
        scheme: usedScheme,
        appBarElevation: 0.5,
        useMaterial3: useMaterial3,
      ),

      darkTheme: FlexThemeData.dark(
        scheme: usedScheme,
        appBarElevation: 2,
        useMaterial3: useMaterial3,
      ),
// theme data here

//
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        // GetPage(name: '/songs', page()=> const SongPage()),
        // GetPage(name:'/playlist',page()=>  const PlaylistPage),
      ],
    );
  }
}
