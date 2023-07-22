import 'package:flutter/material.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';

import '../../../utils/constanta.dart';

class ProductCheckout extends StatelessWidget {
  const ProductCheckout({
    super.key,
    required this.product,
    required this.qty,
  });

  final ProductEntity product;
  final int qty;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: const FlutterLogo(),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.productName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  qty.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  product.unit,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                const Text(
                  "Subtotal :",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  (currencyFormatter.format((product.price -
                          ((product.price * product.discount) / 100)) *
                      qty)),
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
