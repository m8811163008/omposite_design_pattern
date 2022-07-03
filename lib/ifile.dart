import 'package:flutter/material.dart';

/// An interface that defines method to be implemented by leaf and composite components
abstract class IFile {
  int getSize();
  Widget render(BuildContext context);
}
