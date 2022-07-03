import 'package:composite/concrete_files.dart';
import 'package:composite/directory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(body: CompositeExample()),
    );
  }
}

class CompositeExample extends StatelessWidget {
  const CompositeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildMediaDirectory();
  }

  Widget buildMediaDirectory() {
    var musicDirectory = Directory('music');
    musicDirectory.addFile(const AudioFile('abc', 2612453));
    musicDirectory.addFile(const AudioFile('azc', 26124453));
    musicDirectory.addFile(const AudioFile('asf', 246124532));

    var movieDirectory = Directory('movies');
    movieDirectory.addFile(const VideoFile('thes.av', 95488798754));
    movieDirectory.addFile(const VideoFile('thes22.av', 954887459));

    var catPicDirectory = Directory('Cats');
    catPicDirectory.addFile(const ImageFile('cat1', 844497));
    catPicDirectory.addFile(const ImageFile('cat2', 8544497));
    catPicDirectory.addFile(const ImageFile('cat3', 85444974));

    var pictureDirectory = Directory('Pictures');
    pictureDirectory.addFile(catPicDirectory);
    pictureDirectory.addFile(const ImageFile('not a cat.png', 29738554));

    var mediaDirectory = Directory('Media', true);
    mediaDirectory.addFile(musicDirectory);
    mediaDirectory.addFile(movieDirectory);
    mediaDirectory.addFile(pictureDirectory);
    mediaDirectory.addFile(Directory('New folder'));
    mediaDirectory.addFile(const TextFile('nothing', 430971));
    mediaDirectory.addFile(const TextFile('nothing2', 43097112));

    return mediaDirectory;
  }
}
