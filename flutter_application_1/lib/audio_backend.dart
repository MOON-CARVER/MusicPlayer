import 'package:on_audio_query/on_audio_query.dart';
import 'package:just_audio/just_audio.dart';

class AudioBackend {
  final _player = AudioPlayer();
  final _audioQuery = OnAudioQuery();
  bool _hasPermission = false;

  void dispose() {
    _player.dispose();
  }

  void initState() {
    LogConfig logConfig = LogConfig(logType: LogType.DEBUG);
    _audioQuery.setLogConfig(logConfig);
    checkAndRequestPermissions();
  }

  Future<void> checkAndRequestPermissions({bool retry = false}) async {
    _hasPermission = await _audioQuery.checkAndRequest(retryRequest: retry);
  }

  Future<List<SongModel>> querySongs() {
    return _audioQuery.querySongs(
      sortType: null,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
  }

  Future<void> playSong(String filePath) async {
    await _player.setFilePath(filePath);
    _player.play();
  }

  Future<void> stopSong() async {
    _player.stop();
  }
void play() {
    _player.play();
  }

  void pause() {
    _player.pause();
  }

 
  bool get hasPermission => _hasPermission;
}