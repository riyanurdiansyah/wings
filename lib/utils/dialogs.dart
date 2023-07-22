import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';
import 'package:wings_mobile/presentation/controllers/home_controller.dart';
import 'package:wings_mobile/presentation/pages/widgets/product_card.dart';

class Dialogs {
  static dialogMessage(String title, String message) {
    return Get.defaultDialog(
      title: title,
      middleText: message,
    );
  }

  static dialogBottomSheet(ProductEntity product) {
    final homeC = Get.put(HomeController());
    return Get.bottomSheet(
      Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductCard(
              product: product,
              hideButton: true,
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade400,
                        ),
                        onPressed: () => homeC.decrement(),
                        child: const Text("-"))),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(homeC.qty.toString())),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade600,
                    ),
                    onPressed: () => homeC.increment(),
                    child: const Text("+"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  homeC.addProductToCart(product);
                  Get.back();
                },
                child: const Text("Tambah ke keranjang"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
