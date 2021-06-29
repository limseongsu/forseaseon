import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:forseason/repository/provider.dart';
import 'package:forseason/repository/repository.dart';
import 'package:forseason/view_model/document_view_model.dart';
import 'package:provider/provider.dart';
import 'my_test.dart';

void main() {
  runApp(
    MultiProvider(providers: [
    ChangeNotifierProvider.value(value: MyProvider()),
  ],
    child: MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'for : season',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFFF4DCDB)),
        focusColor: Color(0xFFF3C0C0),
        selectedRowColor: Color(0xFFF3C0C0),
      ),
      home: MyTest(),
    );
  }
}

