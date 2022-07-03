import 'package:composite/helper.dart';
import 'package:composite/ifile.dart';
import 'package:flutter/material.dart';

class File extends StatelessWidget implements IFile {
  final String title;
  final int size;
  final IconData icon;

  const File(this.title, this.size, this.icon, [Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) => render(context);

  @override
  int getSize() => size;

  @override
  Widget render(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        leading: Icon(icon),
        trailing: Text(
          FileSizeConvertor.bytesToString(size),
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Colors.black54),
        ),
        dense: true,
      ),
    );
  }
}
