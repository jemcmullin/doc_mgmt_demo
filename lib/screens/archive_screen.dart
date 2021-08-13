import 'package:flutter/material.dart';
import '../widgets/archive_table_widget.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);
  static const routeName = "/archive";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Mangement Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: ArchiveTableWidget(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
