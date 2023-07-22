import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wings_mobile/presentation/pages/detail_history_page.dart';

import '../controllers/history_controller.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  final historyC = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: historyC.globalKey,
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: Obx(() {
        if (historyC.isLoading.value) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        if (historyC.histories.isEmpty) {
          return const Center(
            child: Text("Tidak ada history"),
          );
        }

        return ListView(
          children: List.generate(
            historyC.histories.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                onTap: () => Get.to(() =>
                    DetailHistoryPage(history: historyC.histories[index])),
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                  child: const FlutterLogo(),
                ),
                title: Text(
                  DateFormat.yMMMd('id').format(
                      DateTime.parse(historyC.histories[index].createdAt)),
                  style: const TextStyle(fontSize: 11.5),
                ),
                subtitle: Text(historyC.histories[index].uid),
              ),
            ),
          ),
        );
      }),
    );
  }
}
