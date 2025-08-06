import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'adress.dart';
import 'error.dart';

class NextPage extends StatelessWidget {

  NextPage(String zipcode, BuildContext context)
  {
    showData(zipcode, context);
  }

  void showData(String zipcode, BuildContext context) async {
    try {
      String jsonData = await getRequest(zipcode);
      var data = json.decode(jsonData)["results"][0];
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => Adress(zipcode, data)),
      );
    } catch (e) {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => Error(zipcode, e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Loading...')),
    );
  }

  Future<String> getRequest(String zipcode) async {
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipcode";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Failed to load data");
    }
  }
}