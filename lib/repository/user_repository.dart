import 'package:forseason/model/user_model.dart';

abstract class UserRepository {
  User login();

  void logout();
}