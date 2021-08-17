import 'package:doc_mgmt_demo/screens/doc_route_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './screens/archive_screen.dart';

void main() async {
  await Hive.initFlutter();
  //await Hive.openBox<T>(name);
  runApp(const DocMgmtApp());
}

class DocMgmtApp extends StatelessWidget {
  const DocMgmtApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DocMgmt Demo',
      theme: ThemeData(
        primaryColor: Colors.grey,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary: Colors.amber,
        ),
        //textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.blue)),
      ),
      home: const ArchiveScreen(),
      routes: {
        ArchiveScreen.routeName: (context) => ArchiveScreen(),
        DocRouteScreen.routeName: (context) => DocRouteScreen(),
      },
    );
  }
}
