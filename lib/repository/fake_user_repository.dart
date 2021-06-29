import 'package:forseason/model/user_model.dart';
import 'package:forseason/repository/user_repository.dart';

class FakeUserRepository extends UserRepository {
  List<String> users = [
    'wnsghqwe@navber.com',
    'fjdkslf@naver,com',
    'dkfjskljf@gmail.com'
  ];


  @override
  User login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  void logout() {
    // TODO: implement logout
  }

}