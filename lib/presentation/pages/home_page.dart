import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/presentation/controllers/home_controller.dart';
import 'package:wings_mobile/presentation/pages/cart_page.dart';
import 'package:wings_mobile/presentation/pages/history_page.dart';

import 'widgets/product_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeC.globalKey,
      appBar: AppBar(
        title: const Text("List Barang"),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const CartPage()),
            icon: const Icon(
              Icons.shopping_bag,
            ),
          )
        ],
      ),
      body: Obx(
        () {
          if (homeC.isLoading.value) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          if (homeC.errorMessage.isNotEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        homeC.isLoading.value = true;
                        homeC.errorMessage.value = "";
                        homeC
                            .getAllProduk()
                            .then((value) => homeC.isLoading.value = false);
                      },
                      child: const Text("Refresh")),
                ),
              ],
            );
          }

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            children: List.generate(
              homeC.products.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: ProductCard(
                  product: homeC.products[index],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        child: ElevatedButton(
          onPressed: () => Get.to(() => HistoryPage()),
          child: const Text("Lihat History"),
        ),
      ),
    );
  }
}
