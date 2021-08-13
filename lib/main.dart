import 'package:flutter/material.dart';
import './screens/archive_screen.dart';

void main() {
  runApp(const DocMgmtApp());
}

class DocMgmtApp extends StatelessWidget {
  const DocMgmtApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DocMgmt Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ArchiveScreen(),
    );
  }
}
