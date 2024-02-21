// providers/songs_provider.dart

import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../models/song.dart';
import '../domain/usecases/get_songs_usecase.dart';

class SongsProvider with ChangeNotifier {
  final GetSongsUseCase _getSongsUseCase;

  List<Song> _songs = [];

  SongsProvider(this._getSongsUseCase);

  List<Song> get songs => _songs;

  Future<void> fetchSongs() async {
    _songs = await _getSongsUseCase.execute();
    notifyListeners();
  }
}
