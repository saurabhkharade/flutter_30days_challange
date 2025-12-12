
import 'package:flutter_30days_challange/day3/Model/UserModel.dart';
import 'package:hive/hive.dart';

class UserRepository{

  final String userHiveBox = "userBox";

  Future<void>saveUserData(UserModel userModel)async{
    final box = await Hive.openBox<UserModel>(userHiveBox);
    await box.add(userModel);
  }

}