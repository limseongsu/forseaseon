import 'package:forseason/model/user_model.dart';

abstract class UserRepository {
  void login();

  void logout();

  User getUser();
}