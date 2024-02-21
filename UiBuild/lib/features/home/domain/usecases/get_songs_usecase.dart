import 'package:clean_build/core/data/models/song.dart';
import 'package:clean_build/core/data/repositories/i_songs_repository.dart';

class GetSongsUseCase {
  final ISongsRepository _repository;

  GetSongsUseCase(this._repository);

  Future<List<Song>> execute() async {
    return await _repository.getAllSongs();
  }
}
