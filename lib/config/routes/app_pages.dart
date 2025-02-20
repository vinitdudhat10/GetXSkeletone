
import 'package:get/get.dart';
import '../../core/network/checkInternet.dart';
import '../../features/authentication/presentation/page/login_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = ConstRoute.splash;

  static List<GetPage> routes = [
    GetPage(
      name: ConstRoute.splash,
      page: () => const InternetStatus(child: SplashScreen()),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: ConstRoute.login,
      page: () => const InternetStatus(child: LoginScreen()),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
