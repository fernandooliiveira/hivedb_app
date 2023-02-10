import 'package:hive_flutter/adapters.dart';
import 'package:hiver_app/data/user_model.dart';
import 'package:hiver_app/repository/hivedb/user_repository.dart';

class HivedbService {
  static final HivedbService _service = HivedbService._internal();

  late UserRepository userRepository;

  factory HivedbService() => _service;

  HivedbService._internal();

  Future<void> createBox() async {

  }

  Future<void> init() async {
    await Hive.initFlutter();
    //FIRST: Register adapter
    Hive.registerAdapter(UserModelAdapter());
    //SECOND: OPEN ALL BOX
    await Hive.openBox("user");
    //THIRD: USE BOX
    userRepository = UserRepository(Hive.box("user"));
  }
}
