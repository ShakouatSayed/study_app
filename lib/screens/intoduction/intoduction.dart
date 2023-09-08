import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyapp/config/themes/app_colors.dart';
import 'package:studyapp/utils/dimensions.dart';
import 'package:studyapp/widgets/app_circle_button.dart';

class AppIntroductoinScreen extends StatelessWidget {
  const AppIntroductoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              SizedBox(height: Dimensions.height45 / 5),
              Text(
                  "This is a study app. You can use it as you went. study app. You can use it as you went. study app. You can use it as you went.",
                  style: TextStyle(
                    fontSize: Dimensions.font20,
                    color: onSurfaceTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(height: Dimensions.height45 / 5),
              AppCircleButton(
                child: GestureDetector(
                  onTap: () {
                    Get.offNamed('/home');
                  },
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    size: Dimensions.iconSize24 / 2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
