// bottom_nav_bar.dart
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final String songTitle;
  final VoidCallback onPlayPause; // Add a callback function

  const BottomNavBar(
      {Key? key, required this.songTitle, required this.onPlayPause})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 10, 31, 43),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                ' $songTitle',
                style: TextStyle(color: Colors.white),
              ),
            ),


            IconButton(
              // Add IconButton
              icon: Icon(Icons.play_arrow, color: Colors.white),
              onPressed: onPlayPause,
            ),
          ],
        ),
      ),
    );
  }
}
