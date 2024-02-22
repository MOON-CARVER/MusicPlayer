// bottom_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class BottomNavBar extends StatefulWidget {
  final String songTitle;
  final VoidCallback onPlayPause;

  const BottomNavBar({
    Key? key,
    required this.songTitle,
    required this.onPlayPause,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color.fromARGB(255, 17, 26, 36),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          height: 60.0,
          width: 100,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 14, 42, 57),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Marquee(
                  text: ' ${widget.songTitle}',
                  style: const TextStyle(color: Colors.white),
                  blankSpace: 20.0,
                  velocity: 50.0,
                  pauseAfterRound: Duration(seconds: 3),
                  startPadding: 10,
                ),
              ),
              IconButton(
                icon: Icon(
                  _isPlaying
                      ? Icons.pause_circle_rounded
                      : Icons.play_arrow_rounded,
                  color: Colors.amberAccent,
                ),
                onPressed: () {
                  widget.onPlayPause();
                  setState(() {
                    _isPlaying = !_isPlaying;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}