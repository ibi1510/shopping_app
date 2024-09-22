import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BAGMORE;

  static final routes = [
    GetPage(
      name: _Paths.BAGMORE,
      page: () =>  BagMore(),
      binding: HomeBinding(),
    ),
  ];
}
