import 'package:get/get.dart';
import 'package:studyapp/controllers/quation_paper/question_paper_controller.dart';
import 'package:studyapp/screens/home/home_screen.dart';
import 'package:studyapp/screens/intoduction/intoduction.dart';
import 'package:studyapp/screens/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: "/introduction", page: () => AppIntroductoinScreen()),
        GetPage(
            name: "/home",
            page: () => const HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(QuestionPaperController());
            }))
      ];
}
