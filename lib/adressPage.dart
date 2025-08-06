import 'package:flutter/material.dart';

class Adress extends StatelessWidget {
  String zipcode;
  dynamic data;

  Adress(this.zipcode, this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('住所: $zipcode ${data["address1"]} ${data["address2"]} ${data["address3"]}'),
            ElevatedButton(
              onPressed: () {
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