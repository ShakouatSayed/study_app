import 'package:studyapp/screens/intoduction/intoduction.dart';
import 'package:studyapp/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static List<GetPage> routes()=>[
    GetPage(name:"/", page: () =>SplashScreen()),
    GetPage(name: "/introduction", page: () => AppIntroductoinScreen()),
  ];
}