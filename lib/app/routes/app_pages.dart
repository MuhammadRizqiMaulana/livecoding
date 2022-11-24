import 'package:get/get.dart';

import 'package:livecoding/app/modules/home/bindings/home_binding.dart';
import 'package:livecoding/app/modules/home/views/home_view.dart';
import 'package:livecoding/app/modules/register_phone/bindings/register_phone_binding.dart';
import 'package:livecoding/app/modules/register_phone/views/register_phone_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER_PHONE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PHONE,
      page: () => RegisterPhoneView(),
      binding: RegisterPhoneBinding(),
    ),
  ];
}
