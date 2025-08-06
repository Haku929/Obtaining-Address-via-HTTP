import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  String zipcode;
  String error;

  ErrorPage(this.zipcode, this.error);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // 画面中央に表示する
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$error'),
            ElevatedButton(
              onPressed: () {
                // ホーム画面に戻る
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}