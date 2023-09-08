import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyapp/controllers/quation_paper/question_paper_controller.dart';
import 'package:studyapp/utils/dimensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
        body: Obx(() => ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ClipRect(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: CachedNetworkImage(
                      imageUrl:
                          _questionPaperController.allPaper[index].imageUrl!,
                      placeholder: (context, url) => Container(
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          Image.asset("assets/images/app_splash_logo.png"),
                    ),

                    // FadeInImage(
                    //   image: NetworkImage(
                    //       questionPaperController.allPaperImages[index]),
                    //   placeholder:
                    //       AssetImage("assets/images/app_splash_logo.png"),
                    // ),
                  ),
                );
              },
              itemCount: _questionPaperController.allPaper.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: Dimensions.height20);
              },
            )));
  }
}
