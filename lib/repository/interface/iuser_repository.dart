
import 'package:hiver_app/data/user_model.dart';

abstract class IUserRepository {
  UserModel getUserById(int id);
  Future<void> setUser(UserModel user);

}