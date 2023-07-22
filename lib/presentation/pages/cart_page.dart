import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings_mobile/presentation/controllers/home_controller.dart';
import 'package:wings_mobile/presentation/pages/widgets/product_checkout.dart';
import 'package:wings_mobile/utils/constanta.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final homeC = Get.find<HomeController>();
  int total = 0;

  @override
  void initState() {
    // for (int i = 0; i < homeC.carts.length; i++) {
    //   i
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            children: [
              const Text("CHECKOUT"),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.6,
                    color: Colors.grey.shade600,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Total : "),
                    const SizedBox(
                      width: 18,
                    ),
                    Text(currencyFormatter.format(homeC.total.toInt())),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    homeC.carts.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: ProductCheckout(
                        product: homeC.carts[index].product,
                        qty: homeC.carts[index].qty,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => homeC.confirm(),
            child: const Text("Confirm"),
          ),
        ),
      ),
    );
  }
}
