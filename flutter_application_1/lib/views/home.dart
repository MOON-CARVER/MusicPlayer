// ignore_for_file: prefer_const_constructors

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
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
            padding: EdgeInsets.only(top: 20),
            // padding: EdgeInsets.symmetric(horizontal:14),
            child: Column(
              children: [
                TopRow(textTheme: textTheme),
                SizedBox(
                  height: 80,
                ),
                Expanded(
                  flex: 2,
                  child: ArtWorkImage(
                    image:
                        "https://cdn.pixabay.com/photo/2018/10/04/19/46/dog-3724261_960_720.jpg",
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Column(
                        children: [SongInfo(textTheme: textTheme)],



                        
                      ),
                      
                    ),
                  ),

                  
                )
              ],
              
            ),
          ),
        )
        
        );
  }
}

// ! the top row widgets with back , now playing and queue icon
class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Hicons.left_square_2_light_outline,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'Now playing',
          style: textTheme.bodyMedium?.copyWith(color: Colors.white),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Hicons.menu_fries_bold,
          color: Colors.white,
        ),
      ],
    );
  }
}

// ! The Song info widget under the album art
class SongInfo extends StatelessWidget {
  const SongInfo({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bonk Anthem',
              style: textTheme.titleLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cheems',
              style: textTheme.subtitle1?.copyWith(color: Colors.white60),
            ),
          ],
        ),
        Icon(
          Hicons.heart_3_light_outline,
          color: Color(0xFF6C6C6C),
        )
      ],
    );
  }
}
