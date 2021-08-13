import 'package:flutter/material.dart';
import '../screens/doc_route_screen.dart';

class ArchiveTableWidget extends StatelessWidget {
  const ArchiveTableWidget({
    Key? key,
  }) : super(key: key);

  static const numItems = 5;

  @override
  Widget build(BuildContext context) {
    return DataTable(
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
    );
  }
}
