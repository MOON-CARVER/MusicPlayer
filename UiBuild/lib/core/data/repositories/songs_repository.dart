import 'package:clean_build/core/data/models/song.dart';
import 'package:clean_build/core/data/repositories/i_songs_repository.dart';
import 'package:on_audio_query/on_audio_query.dart';



class SongsRepository implements ISongsRepository {
  final OnAudioQuery _audioQuery = OnAudioQuery();

  @override
  Future<List<Song>> getAllSongs() async {
    // Query songs using _audioQuery and convert to Song objects
    return []; // Implement conversion
  }

  // Implement other methods
}
