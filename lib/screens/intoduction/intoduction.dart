import 'package:flutter/material.dart';
import 'package:studyapp/utils/dimensions.dart';
import 'package:studyapp/widgets/app_circle_button.dart';
import 'package:get/get.dart';

class AppIntroductoinScreen extends StatelessWidget {
  const AppIntroductoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,
                  color: Colors.redAccent, size: Dimensions.iconSize24),
              SizedBox(height: Dimensions.height45 / 5),
              Text(
                  "This is a study app. You can use it as you went. study app. You can use it as you went. study app. You can use it as you went."),
              SizedBox(height: Dimensions.height45 / 5),
              AppCircleButton(
                ontap: () => null,
                child: Icon(
                  Icons.arrow_forward_sharp,
                  size: Dimensions.iconSize24 / 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
