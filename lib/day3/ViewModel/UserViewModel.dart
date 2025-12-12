import 'package:flutter/material.dart';
import '../Model/UserModel.dart';
import '../Repository/UserRepository.dart';

class UserViewModel extends ChangeNotifier {
  final repo = UserRepository();

  String name = "";
  String email = "";
  String userId = "";
  String password = "";
  String username = "";
  String address = "";
  String city = "";
  String pincode = "";
  String gender = "Male";

  bool isLoading = false;

  updateName(String v) { name = v; notifyListeners(); }
  updateEmail(String v) { email = v; notifyListeners(); }
  updateUserId(String v) { userId = v; notifyListeners(); }
  updatePassword(String v) { password = v; notifyListeners(); }
  updateUsername(String v) { username = v; notifyListeners(); }
  updateAddress(String v) { address = v; notifyListeners(); }
  updateCity(String v) { city = v; notifyListeners(); }
  updatePincode(String v) { pincode = v; notifyListeners(); }
  updateGender(String v) { gender = v; notifyListeners(); }

  Future<void> saveUser() async {
    isLoading = true;
    notifyListeners();

    final user = UserModel(
      name: name,
      email: email,
      userId: userId,
      password: password,
      username: username,
      address: address,
      city: city,
      pincode: pincode,
      gender: gender,
    );

    await repo.saveUserData(user);

    isLoading = false;
    notifyListeners();
  }

  List<UserModel> users = [];



}
