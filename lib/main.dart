import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:studyapp/data_uploader_screen.dart';
import 'package:studyapp/screens/splash/splash_screen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


// Future<void> main() async {
// WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(
//       GetMaterialApp(home: DataUploderScreen()));
// }

