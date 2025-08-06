import 'package:flutter/material.dart';

class AdressPage extends StatelessWidget {
  String zipcode;
  dynamic data;

  AdressPage(this.zipcode, this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // 画面中央に表示する
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('住所: $zipcode ${data["address1"]} ${data["address2"]} ${data["address3"]}'),
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