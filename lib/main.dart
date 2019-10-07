import "package:flutter/material.dart";

import 'Whatsapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "WhatsApp",
        theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff250366),
        ),
    home:Whatsapp(),
    );
  }

}
