import 'package:flutter/material.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';
import 'package:wings_mobile/utils/constanta.dart';
import 'package:wings_mobile/utils/dialogs.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.product,
    this.hideButton = false,
  });

  final ProductEntity product;
  bool? hideButton;

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
            Text(
              (currencyFormatter.format(product.price)),
              style: const TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              (currencyFormatter.format(
                  product.price - (product.price * product.discount) / 100)),
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        const Spacer(),
        if (hideButton == false)
          ElevatedButton(
            onPressed: () {
              Dialogs.dialogBottomSheet(product);
            },
            child: const Text("+ CART"),
          ),
      ],
    );
  }
}
