import 'package:flutter/cupertino.dart';
import 'package:forseason/repository/fake_user_repository.dart';

class UserViewModel extends ChangeNotifier {
  UserViewModel(FakeUserRepository userRepository);

 FakeUserRepository userRepository = FakeUserRepository();

}