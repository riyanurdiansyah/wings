import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'package:wings_mobile/entities/cart/cart_entity.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';
import 'package:wings_mobile/services/api_service.dart';
import 'package:wings_mobile/services/api_service_impl.dart';

class HomeController extends GetxController {
  ApiService apiService = ApiServiceImpl();

  final globalKey = GlobalKey<ScaffoldState>();

  RxBool isLoading = true.obs;
  RxInt qty = 1.obs;
  RxDouble total = 0.0.obs;
  RxList<ProductEntity> products = <ProductEntity>[].obs;
  RxString errorMessage = "".obs;

  RxList<CartEntity> carts = <CartEntity>[].obs;

  @override
  void onInit() async {
    getAllProduk();
    await changeLoading(false);
    super.onInit();
  }

  Future<void> changeLoading(bool value) async {
    isLoading.value = value;
  }

  Future<void> getAllProduk() async {
    final response = await apiService.getAllProduct();
    response.fold(
      (l) {
        errorMessage.value = "Refresh";
        ScaffoldMessenger.of(globalKey.currentContext!)
            .showSnackBar(const SnackBar(content: Text("Gagal meload data")));
      },
      (data) => products.value = data,
    );
  }

  Future<void> increment() async {
    qty.value++;
  }

  Future<void> decrement() async {
    if (qty.value != 1) {
      qty.value--;
    }
  }

  Future<void> addProductToCart(ProductEntity prod) async {
    bool found = false;
    for (int i = 0; i < carts.length; i++) {
      if (carts[i].product.productCode == prod.productCode) {
        carts[i].qty += qty.value;
        found = true;
        break;
      }
    }
    if (!found) {
      carts.add(CartEntity(prod, qty.value));
    }
    calculatePrice();
  }

  void calculatePrice() {
    total.value = 0;
    for (int i = 0; i < carts.length; i++) {
      total.value += (carts[i].product.price -
              ((carts[i].product.price * carts[i].product.discount) / 100)
                  .round()) *
          carts[i].qty;
    }
    qty.value = 1;
  }

  Future<void> confirm() async {
    final uid = const Uuid().v4();
    List<Map<String, dynamic>> listJson = carts.map((e) {
      return {
        "productCode": e.product.productCode,
        "productName": e.product.productName,
        "currency": e.product.currency,
        "dimension": e.product.dimension,
        "discount": e.product.discount,
        "price": e.product.price,
        "unit": e.product.unit,
        "qty": e.qty,
      };
    }).toList();
    final body = {
      "uid": uid,
      "userId": FirebaseAuth.instance.currentUser!.uid,
      "items": listJson,
      "createdAt": DateTime.now().toIso8601String(),
    };

    final response = await apiService.insertOrder(body);
    response.fold((l) {
      ScaffoldMessenger.of(globalKey.currentContext!)
          .showSnackBar(const SnackBar(content: Text("Gagal membuat order")));
    }, (data) {
      carts.clear();
      total.value = 0;
      Get.back();
      ScaffoldMessenger.of(globalKey.currentContext!).showSnackBar(
          const SnackBar(content: Text("Berhasil membuat order")));
    });
  }
}
