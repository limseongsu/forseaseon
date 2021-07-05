import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:forseason/view/login/login_page.dart';


class LoadingPage extends StatefulWidget {

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        backgroundImage: AssetImage('assets/loading.gif'),
        logo: Image.asset('assets/loading_1.png', color: Colors.transparent,),
        navigator: LoginPage(),
        durationInSeconds: 3,
        showLoader: false,
      ),
    );
  }
}






// return Image.asset('assets/loading.gif');