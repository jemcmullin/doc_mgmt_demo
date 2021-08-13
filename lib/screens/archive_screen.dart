import 'package:flutter/material.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);
  static const routeName = "/archive";
  static const numItems = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Mangement Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Number')),
                  DataColumn(label: Text('Title')),
                  DataColumn(label: Text('Status')),
                ],
                rows: List.generate(
                  numItems,
                  (index) => DataRow(cells: [
                    DataCell(Text('A$index')),
                    DataCell(Text('B$index')),
                    DataCell(Text('C$index')),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
