import 'package:firebase_getx/consts/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    bool useMaterial3 = true;

    

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('M E L O P H I L E '),
      theme: ThemeData(
        textTheme: 
        Theme.of(context).textTheme.apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,)
      ),
    

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
