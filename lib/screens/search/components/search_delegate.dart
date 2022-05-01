import 'dart:convert';

import 'package:fashion_app/models/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class SearchDestination extends SearchDelegate<SearchResult> {
  @override
  final String searchFieldLabel;

  SearchDestination()
      : this.searchFieldLabel = 'Search all clothes...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () => this.query = '', icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    final searchResult = SearchResult(cancelled: true);
    return IconButton(
        onPressed: () {
          this.close(context, searchResult);
        },
        icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildResultSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // var searchBloc = Provider.of<SearchBloc>(context);

    var listLocationManually = [
      ListTile(
        leading: Icon(Icons.all_inclusive_rounded),
        title: Text('Select one ramdon'),
        onTap: () {
          this.close(context, SearchResult(cancelled: false, description: 'manual'));
        },
      ),
      Divider()
    ];
    

    // var historialListResult = searchBloc.state.historialList;
    // var combinedList = listLocationManually +
    //     _buildListTileHistorial(context, historialListResult);

    return ListView(
      children: listLocationManually,
    );
  }

  Widget _buildResultSuggestions(BuildContext context) {
    // var searchBloc = Provider.of<SearchBloc>(context);

    // this
    //     ._trafficService
    //     .getSuggestionsByQuery(this.query.trim(), this.proximity);

    // return StreamBuilder(
    //   stream: _trafficService.suggestionsStream,
    //   builder: (BuildContext context, AsyncSnapshot<SearchResponse> snapshot) {
    //     if (!snapshot.hasData) {
    //       return Center(child: CircularProgressIndicator());
    //     }
    //     final places = snapshot.data!.features;

    //     return ListView.separated(
    //       itemCount: places.length,
    //       separatorBuilder: (_, i) => Divider(),
    //       itemBuilder: (_, i) {
    //         final place = places[i];

    //         return ListTile(
    //           leading: Icon(Icons.place),
    //           title: Text(place.textEs),
    //           subtitle: Text(place.placeNameEs),
    //           onTap: () {
    //             if (this.query.isNotEmpty) {
    //               searchBloc.add(OnQuerySearchComplete(place));
    //             }

    //             final LatLng center =
    //                 LatLng(places[i].center[1], places[i].center[0]);
    //             Function() closeSearch = () => this.close(
    //                 context, SearchResult(cancelled: false, manual: false));
    //             // calculateDestiny(_, center, place.textEs, closeSearch);

    //             // calculateDestiny(_, center, place.textEs);
    //           },
    //         );
    //       },
    //     );
    //   },
    // );
    return Container(
      padding: EdgeInsets.all( 20),
      child: Text(this.query),
    );
  }


  // List<ListTile> _buildListTileHistorial(
  //     BuildContext _, List<Feature> historialListResult) {
  //   return historialListResult
  //       .map((e) => ListTile(
  //             leading: Icon(Icons.place),
  //             title: Text(e.textEs),
  //             subtitle: Text(e.placeNameEs),
  //             onTap: () {
  //               final LatLng center = LatLng(e.center[1], e.center[0]);

  //               Function() closeSearch = () => this
  //                   .close(_, SearchResult(cancelled: false, manual: false));
  //               calculateDestiny(_, center, e.textEs, closeSearch);
                
  //             },
  //           ))
  //       .toList();
  // }
}
