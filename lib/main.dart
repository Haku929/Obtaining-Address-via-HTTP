import 'package:flutter/material.dart';
import 'load.dart';

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
        // 画面中央に表示する
        mainAxisSize: MainAxisSize.min,
        children: [
          // 郵便番号を入力するテキストフィールド
          TextField(
            // テキストフィールドの装飾
            decoration: InputDecoration(
              labelText: "郵便番号",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onChanged: (text) {
              zipcode = text;
            },
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => LoadPage(zipcode, context)),
              );
            },
            child: Text("Search"),
          ),
        ],
      ),
    );
  }
}