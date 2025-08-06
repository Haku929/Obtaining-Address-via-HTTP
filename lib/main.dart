import 'package:flutter/material.dart';
import 'next.dart';

String zipcode = '';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter zipcode',
            ),
            onChanged: (text) {
              zipcode = text;
            },
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => NextPage(zipcode, context)), // ここでawaitを使っている
              );
            },
            child: Text("Search"),
          ),
        ],
      ),
    );
  }
}