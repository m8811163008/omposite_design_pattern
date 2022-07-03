import 'package:composite/file.dart';
import 'package:flutter/material.dart';

/// All of these classes extend the File class and specify the concrete file type by providing a unique icon for the corresponding file type (leaf?)
class AudioFile extends File {
  const AudioFile(String title, int size, [Key? key])
      : super(title, size, Icons.music_note, key);
}

class ImageFile extends File {
  const ImageFile(String title, int size, [Key? key])
      : super(title, size, Icons.image, key);
}

class TextFile extends File {
  const TextFile(String title, int size, [Key? key])
      : super(title, size, Icons.description, key);
}

class VideoFile extends File {
  const VideoFile(String title, int size, [Key? key])
      : super(title, size, Icons.movie, key);
}
