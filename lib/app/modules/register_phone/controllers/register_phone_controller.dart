import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPhoneController extends GetxController with GetSingleTickerProviderStateMixin{
  //TODO: Implement RegisterPhoneController

  var hiddenPassword = true.obs;

  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  //textField Validation
  var usernameError = ''.obs;
  var phoneNumberError = ''.obs;
  var passwordError = ''.obs; 

  late TabController tabController;

  final List<Tab> myTabs = <Tab> [
    const Tab(
      text: "Email"
    ),
    const Tab(
      text: "Phone Number"
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

  void showPasswordTextField() {
    hiddenPassword.value = !hiddenPassword.value;
  }
}
