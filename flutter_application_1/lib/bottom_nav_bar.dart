// bottom_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class BottomNavBar extends StatelessWidget {
  final String songTitle;
  final VoidCallback onPlayPause; // Add a callback function
  final bool isPlaying; 


  const BottomNavBar(
      {Key? key, 
      required this.songTitle, 
      required this.onPlayPause,
      required this.isPlaying})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color:Color.fromARGB(255, 17, 26, 36),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          height: 60.0,
          width: 
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 14, 42, 57),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Marquee(
                  text: ' $songTitle',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                // Add IconButton
                icon:  Icon(
                  isPlaying ?Icons.pause_circle_rounded:Icons.play_arrow_rounded,
                  color: Colors.amberAccent,),
                onPressed: onPlayPause,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
