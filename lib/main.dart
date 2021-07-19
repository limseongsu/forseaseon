import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:forseason/repository/kakao_login_provider.dart';
import 'package:forseason/repository/provider.dart';
import 'package:forseason/view/loading_page/loading.dart';
import 'package:provider/provider.dart';
import 'package:kakao_flutter_sdk/all.dart';

void main() {
  KakaoContext.clientId = "2ee028047eb9b60424b444521d90e046";
  KakaoContext.javascriptClientId = "08f18c834dad5360d06153247949fb4b";
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MyProvider()),
        // ChangeNotifierProvider.value(value: LoginProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      home: LoadingPage(),
    );
  }
}
