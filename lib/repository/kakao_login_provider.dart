import 'package:flutter/material.dart';
import 'package:forseason/view/login/login_page.dart';
import 'package:kakao_flutter_sdk/all.dart';


class LoginProvider extends ChangeNotifier {

  bool _isKakaoTalkInstalled = false;

  get iskakaoTalkInstalled => _isKakaoTalkInstalled;
  get loginWithKakao => _loginWithKakao;
  get loginWithTalk => _loginWithTalk;

  _initKakaoTalkInstalled() async {
    final installed = await isKakaoTalkInstalled();
    print('kakao Install : ' + installed.toString());
    _isKakaoTalkInstalled = installed;
    notifyListeners();
  }
  _issueAccessToken(String authCode) async {
    try {
      var token = await AuthApi.instance.issueAccessToken(authCode);
      AccessTokenStore.instance.toStore(token);
      print(token);
    } catch (e) {
      print(e.toString());
      notifyListeners();
    }
  }


  _loginWithKakao() async {
    try {
      var code = await AuthCodeClient.instance.request();
      await _issueAccessToken(code);
    } catch (e) {
      print(e.toString());
      notifyListeners();
    }
  }

  _loginWithTalk() async {
    try {
      var code = await AuthCodeClient.instance.requestWithTalk();
      await _issueAccessToken(code);
    } catch (e) {
      print(e.toString());
      notifyListeners();
    }
  }
}