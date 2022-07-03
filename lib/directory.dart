import 'package:composite/ifile.dart';
import 'package:flutter/material.dart';

import 'helper.dart';

class Directory extends StatelessWidget implements IFile {
  final String title;
  final bool isInitiallyExpanded;

  final List<IFile> files = [];

  Directory(this.title, [this.isInitiallyExpanded = false, Key? key])
      : super(key: key);

  void addFile(IFile file) {
    files.add(file);
  }

  @override
  Widget build(BuildContext context) => render(context);

  @override
  int getSize() => files.fold(
      0, (previousValue, element) => previousValue + element.getSize());

  @override
  Widget render(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ExpansionTile(
          title: Text('$title (${FileSizeConvertor.bytesToString(getSize())})'),
          leading: const Icon(Icons.folder),
          initiallyExpanded: isInitiallyExpanded,
          children: files.map((IFile file) => file.render(context)).toList(),
        ),
      ),
    );
  }
}
