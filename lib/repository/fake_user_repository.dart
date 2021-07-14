import 'package:forseason/model/user_model.dart';
import 'package:forseason/repository/user_repository.dart';

class FakeUserRepository extends UserRepository {
  User user = User(
        '최준호',
        'wnsghqwe@naver.com',
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg',
        30,
        5,
        '안녕하세요'
  );


  @override
  void login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  void logout() {
    // TODO: implement logout
  }

  @override
  User getUser() {
    return user;
  }

}