import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'audio_backend.dart';
import 'bottom_nav_bar.dart';

void main() {
  runApp(const MaterialApp(
    home: Songs(),
    debugShowCheckedModeBanner: false,
  ));
}

class Songs extends StatefulWidget {
  const Songs({Key? key}) : super(key: key);

  @override
  _SongsState createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  final AudioBackend _audioBackend = AudioBackend();
  String? _selectedSongTitle;
  bool _isPlaying = false;

  void _handlePlayPause() {
    if (_isPlaying) {
      _audioBackend.pause();
    } else {
      _audioBackend.resume();
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  void dispose() {
    _audioBackend.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _audioBackend.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Player'),
      ),
      body: FutureBuilder<List<SongModel>>(
        future: _audioBackend.querySongs(),
        builder:
            (BuildContext context, AsyncSnapshot<List<SongModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                SongModel song = snapshot.data![index];
                return ListTile(
                  leading: const Icon(Icons.music_note),
                  title: Text(song.title),
                  onTap: () {
                    _audioBackend.playSong(song.data);
                    setState(() {
                      _selectedSongTitle = song.title;
                    });
                  },
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: _selectedSongTitle != null
          ? BottomNavBar(
              songTitle: _selectedSongTitle!,
              onPlayPause: _handlePlayPause,
            )
          : null,
    );
  }
}
