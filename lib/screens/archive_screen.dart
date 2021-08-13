import 'package:doc_mgmt_demo/screens/doc_route_screen.dart';
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
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: DataTable(
                showCheckboxColumn: false,
                columns: const [
                  DataColumn(label: Text('Number')),
                  DataColumn(label: Text('Title')),
                  DataColumn(label: Text('Status')),
                ],
                rows: List.generate(
                  numItems,
                  (index) => DataRow(
                      onSelectChanged: (_) {
                        Navigator.pushNamed(context, DocRouteScreen.routeName,
                            arguments: index);
                      },
                      cells: [
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
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
