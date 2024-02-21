import 'package:clean_build/core/data/models/song.dart';

abstract class ISongsRepository {
  Future<List<Song>> getAllSongs();
  // More methods for filtering, searching, etc.
}
