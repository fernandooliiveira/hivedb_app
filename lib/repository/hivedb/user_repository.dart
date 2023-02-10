import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiver_app/data/user_model.dart';
import 'package:hiver_app/repository/interface/iuser_repository.dart';

class UserRepository implements IUserRepository{
  late Box bx;

  //VARIABLE FOR SINGLETON TEST
  int x = 0;

  UserRepository(this.bx);

  @override
  UserModel getUserById(int id) {
    return bx.getAt(id);
  }

  @override
  Future<void> setUser(UserModel user) async {
    int id = await bx.add(user);
    print(id);
  }

}