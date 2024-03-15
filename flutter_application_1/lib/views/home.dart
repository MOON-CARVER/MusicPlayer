// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/art_work_image.dart';
import 'package:flutter_hicons/flutter_hicons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: const Color(0xFF1c1b1b),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 5, right: 5),
            // padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Hicons.left_square_2_light_outline,
                      color: Colors.white,
                    ),
                    Text(
                      'Now playing',
                      style:
                          textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                    Icon(
                      Hicons.menu_fries_bold,
                      color: Colors.white,
                    ),
                  ],
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Center(
                          child: ArtWorkImage(
                        image:
                            "https://images.unsplash.com/photo-1611223726890-af5181f7769d?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      )),
                    )),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Song Name',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Artist Name',
                                style: textTheme.titleLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Hicons.heart_3_light_outline,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
