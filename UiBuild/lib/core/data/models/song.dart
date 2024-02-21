// lib/core/data/models/song.dart

class Song {
  final String title;
  final String artist;
  final String album;
  final String dataUri; // or Uri if you prefer
  final int duration;
  final String artworkUri;

  const Song({
    required this.title,
    required this.artist,
    required this.album,
    required this.dataUri,
    required this.duration,
    required this.artworkUri
  });
  
  get object => null;


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Song &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          artist == other.artist &&
          album == other.album &&
          dataUri == other.dataUri &&
          duration == other.duration &&
          artworkUri == other.artworkUri;

  @override
        int get hashCode => hashValues([title, artist, album, dataUri, duration, artworkUri]);

  @override
  String toString() =>
      'Song{title: $title, artist: $artist, album: $album, dataUri: $dataUri , duration: $duration , artworkUri: $artworkUri}';
}
