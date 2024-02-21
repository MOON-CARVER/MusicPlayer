// providers/songs_provider.dart

import 'package:clean_build/core/data/models/song.dart';
import 'package:clean_build/features/home/domain/usecases/get_songs_usecase.dart';
import 'package:flutter/material.dart';

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
