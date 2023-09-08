import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:studyapp/firebase_ref/referances.dart';
import 'package:studyapp/models/question_paper_model.dart';
import 'package:studyapp/services/firebase_storage_services.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPaper = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    //List<String> imgName = ["biology", "chemistry", "maths", "physics"];

    try {
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();

      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      allPaper.assignAll(paperList);

      for (var paper in paperList) {
        final imgURL =
            await Get.find<FirebaseStorageService>().getImage(paper.title);

        paper.imageUrl = imgURL;
      }

      allPaper.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }
}
