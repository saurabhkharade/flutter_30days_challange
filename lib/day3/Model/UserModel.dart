import 'package:hive/hive.dart';
part 'UserModel.g.dart';

@HiveType(typeId: 1)
class UserModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String userId;

  @HiveField(3)
  String password;

  @HiveField(4)
  String username;

  @HiveField(5)
  String address;

  @HiveField(6)
  String city;

  @HiveField(7)
  String pincode;

  @HiveField(8)
  String gender;

  UserModel({
    required this.name,
    required this.email,
    required this.userId,
    required this.password,
    required this.username,
    required this.address,
    required this.city,
    required this.pincode,
    required this.gender,
  });
}
