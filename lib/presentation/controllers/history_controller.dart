import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/entities/history/history_entity.dart';
import 'package:wings_mobile/services/api_service.dart';
import 'package:wings_mobile/services/api_service_impl.dart';

class HistoryController extends GetxController {
  ApiService apiService = ApiServiceImpl();
  final globalKey = GlobalKey<ScaffoldState>();

  RxBool isLoading = true.obs;
  RxList<HistoryEntity> histories = <HistoryEntity>[].obs;

  @override
  void onInit() async {
    getAllHistoryById();
    await changeLoading(false);
    super.onInit();
  }

  Future<void> changeLoading(bool value) async {
    isLoading.value = value;
  }

  Future<void> getAllHistoryById() async {
    final id = FirebaseAuth.instance.currentUser!.uid;
    final response = await apiService.getHistoryById(id);
    response.fold(
      (l) {
        ScaffoldMessenger.of(globalKey.currentContext!)
            .showSnackBar(const SnackBar(content: Text("Gagal meload data")));
      },
      (data) => histories.value = data,
    );
  }
}
