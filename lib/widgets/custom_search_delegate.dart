import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:weather/models/location_model.dart';
import 'package:weather/provider/search_provider.dart';

class CustomSearchDelegate extends SearchDelegate {
  var resultList;

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    if (query.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              "Enter a search term.",
            ),
          )
        ],
      );
    }

    return ListView.builder(
      itemCount: resultList.length,
      itemBuilder: (BuildContext context, int index) => ListTile(
        title: Text(resultList[index]['name']),
        onTap: () {
          final location = LocationModel(
            latitude: resultList[index]['coord.lat'],
            longitude: resultList[index]['coord.lon'],
            name: resultList[index]['name'],
          );
          searchProvider.addLocation(location);
          close(context, null);
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    if (query.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              "Enter a search term.",
            ),
          )
        ],
      );
    }

    return Column(
      children: <Widget>[
        Expanded(
          child: StreamBuilder(
            stream: searchProvider.streamParseJson(query).asStream(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Center(child: CircularProgressIndicator()),
                  ],
                );
              } else if (snapshot.data.length == 0) {
                return Column(
                  children: const <Widget>[
                    Text(
                      "No Results Found.",
                    ),
                  ],
                );
              } else {
                resultList = snapshot.data
                    .where((e) =>
                        e['name'].toString().toLowerCase().startsWith(query))
                    .toList();
                return ListView.builder(
                  itemCount: resultList.length,
                  itemBuilder: (context, index) => ListTile(
                    title: RichText(
                      text: TextSpan(
                          text: resultList[index]['name']
                              .substring(0, query.length),
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: resultList[index]['name']
                                  .substring(query.length),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                    ),
                    // Text(),
                    onTap: () async {
                      final location = LocationModel(
                        latitude: resultList[index]['coord.lat'],
                        longitude: resultList[index]['coord.lon'],
                        name: resultList[index]['name'],
                      );
                      FutureBuilder(
                        future: searchProvider.addLocation(location),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return Container();
                          }
                        },
                      );
                      close(context, null);
                    },
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
