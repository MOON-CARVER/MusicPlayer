import 'package:flutter/material.dart';
import 'package:mitch_kokos/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: "antarctica",
        artistName: "Neyo",
        albumArtImagePath: "assets/images/art.png",
        audioPath: "songs/antarctica.mp3"),
    Song(
        songName: "broken glass",
        artistName: "Kyojin",
        albumArtImagePath: "assets/images/download.png",
        audioPath: "songs/broken glass.mp3"),
    Song(
        songName: "Randomly",
        artistName: "Lucki",
        albumArtImagePath: "assets/images/art.png",
        audioPath: "songs/Randomly.mp3"),
   ] ;

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex; 
}
