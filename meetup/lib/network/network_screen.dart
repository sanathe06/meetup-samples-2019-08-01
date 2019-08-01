import 'package:flutter/material.dart';
import 'package:meetup/network/data.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class NetworkScreen extends StatefulWidget {
  NetworkScreen({Key key}) : super(key: key);

  _NetworkScreenState createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: fetchPost(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  Post post = snapshot.data[index];
                  return ListTile(
                    title: Text("${post.title}"),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<Post>> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/');
    if (response.statusCode == 200) {
      return postFromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
