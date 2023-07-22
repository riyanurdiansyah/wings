import 'package:flutter/material.dart';
import 'package:wings_mobile/entities/history/history_entity.dart';

import '../../utils/constanta.dart';
import 'widgets/product_checkout.dart';

class DetailHistoryPage extends StatelessWidget {
  const DetailHistoryPage({
    super.key,
    required this.history,
  });

  final HistoryEntity history;

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (int i = 0; i < history.items.length; i++) {
      total += (history.items[i].price -
              ((history.items[i].price * history.items[i].discount) / 100)
                  .round()) *
          history.items[i].qty;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail History"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Column(
          children: [
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
                  Text(currencyFormatter.format(total.toInt())),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  history.items.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: ProductCheckout(
                      product: history.items[index],
                      qty: history.items[index].qty,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
