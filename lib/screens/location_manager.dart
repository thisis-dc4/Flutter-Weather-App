import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:weather/provider/hive_db_provider.dart';

class LocationManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hProvider = Provider.of<HiveDbProvider>(context);
    final data = hProvider.allDataIterable.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Text('${index + 1}.'),
                      const SizedBox(width: 10),
                      Text(data[index].name.toString()),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_sweep),
                    onPressed: () async {
                      await hProvider.removeLocation(index);
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
