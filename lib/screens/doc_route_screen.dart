import 'package:flutter/material.dart';

class DocRouteScreen extends StatelessWidget {
  const DocRouteScreen({Key? key}) : super(key: key);
  static const routeName = "/document";

  @override
  Widget build(BuildContext context) {
    final docId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
        appBar: AppBar(
          title: Text('Document $docId'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('ID: $docId'),
                ),
              ),
            ),
          ],
        ));
  }
}
