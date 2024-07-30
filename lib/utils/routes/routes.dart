import 'package:get/get.dart';
import 'package:invoiceease/utils/dashbord/dashbord.dart';
import 'package:invoiceease/utils/interfaces/loginSignup/login.dart';
import 'package:invoiceease/utils/interfaces/loginSignup/signup.dart';
import 'package:invoiceease/utils/interfaces/onboardingScreen/welcome.dart';
import 'package:invoiceease/utils/ShopView/shopView.dart';

class RouteClass {
  static final routes = [
    GetPage(name: '/', page: () => const LoginScreen()),
    GetPage(name: '/login', page: () => const welcomeScreen()),
    GetPage(name: '/register', page: () => const Signupscreen()),
    GetPage(name: '/forgotpassword', page: () => const Signupscreen()),
    GetPage(name: '/dashbord', page: () => const dashbord()),
    // GetPage(name: '/shop_view', page: () => const shop_view()),
    // GetPage(name: '/nearbyshops', page: () => const NearbyShops()),
  ];

  static String getHomeRoute() {
    return '/';
  }
}
