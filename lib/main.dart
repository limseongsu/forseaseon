import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:forseason/repository/fake_document_input_repository.dart';
import 'package:forseason/repository/fake_document_repository.dart';
import 'package:forseason/repository/fake_user_repository.dart';
import 'package:forseason/view_model/document_input_view_model.dart';
import 'package:forseason/view_model/provider.dart';
import 'package:forseason/view/main_page/main_page.dart';
import 'package:forseason/view_model/document_view_model.dart';
import 'package:forseason/view_model/user_view_medel.dart';
import 'package:provider/provider.dart';

void main() {
  final docRepository = FakeDocumentRepository();
  final  userRepository = FakeUserRepository();
  final inputRepository = FakeDocumentInputRepository();
  runApp(
    MultiProvider(providers: [
    ChangeNotifierProvider.value(value: MyProvider()),
    ChangeNotifierProvider.value(value: DocumentViewModel(docRepository)),
    ChangeNotifierProvider.value(value: UserViewModel(userRepository)),
    ChangeNotifierProvider.value(value: DocumentInputViewModel(inputRepository)),
  ],
    child: MyApp(),),
  );
}

class MyApp extends StatelessWidget {
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
      home: MainPage(),
    );
  }
}
