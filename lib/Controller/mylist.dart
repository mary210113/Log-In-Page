import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'albummoedel.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getAlbum(),
      builder: (context, data) {
        if (data.hasData) {
          return ListView.builder(
              itemCount: data.data?.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(data.data![index].title),
                    Image.network("https://picsum.photos/seed/$index/200/")
                  ],
                );
              });
        } else {
          throw "No Data";
        }
      },
    ));
  }

  Future<List<Album>> getAlbum() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((album) => Album.fromJson(album)).toList();
    } else {
      throw "Reading Failed";
    }
  }
}
