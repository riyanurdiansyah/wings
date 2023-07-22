import 'package:wings_mobile/entities/product/product_entity.dart';

class CartEntity {
  CartEntity(this.product, this.qty);

  ProductEntity product;
  int qty;
}
