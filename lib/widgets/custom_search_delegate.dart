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
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
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
          // print(location.latitude);
          searchProvider.addLocation(location);
          close(context, null);
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }

    return Column(
      children: <Widget>[
        //Build the results based on the searchResults stream in the searchBloc
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
                        e['name'].toString().toLowerCase().contains(query))
                    .toList();
                // dynamic results = snapshot.data.toList();
                return ListView.builder(
                  itemCount: resultList.length,
                  itemBuilder: (context, index) => ListTile(
                      title: Text(resultList[index]['name']),
                      onTap: () {
                        final location = LocationModel(
                          latitude: resultList[index]['coord.lat'],
                          longitude: resultList[index]['coord.lon'],
                          name: resultList[index]['name'],
                        );
                        // print(location.latitude);
                        searchProvider.addLocation(location);
                        close(context, null);
                      }),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
