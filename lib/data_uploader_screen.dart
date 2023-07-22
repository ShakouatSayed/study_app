import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyapp/controllers/quation_paper/data_uploder.dart';
import 'package:studyapp/firebase_ref/loading_status.dart';

// ignore: must_be_immutable
class DataUploderScreen extends StatelessWidget {
  DataUploderScreen({Key? key}) : super(key: key);
  DataUploder controller = Get.put(DataUploder());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(()=>Text(controller.loadingStatus.value == LoadingStatus.completed?"Upload Completed":"uploading...")),
      ),
    );
  }
}
