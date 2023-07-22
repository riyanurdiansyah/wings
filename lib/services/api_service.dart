import 'package:dartz/dartz.dart';
import 'package:wings_mobile/core/custom_error.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';

import '../entities/history/history_entity.dart';
import '../entities/user/user_entity.dart';

abstract class ApiService {
  Future<Either<CustomError, bool>> login(Map<String, dynamic> body);

  Future<Either<CustomError, UserEntity>> getUserByUsername(String username);

  Future<Either<CustomError, List<ProductEntity>>> getAllProduct();

  Future<Either<CustomError, bool>> insertOrder(Map<String, dynamic> body);

  Future<Either<CustomError, List<HistoryEntity>>> getHistoryById(String id);
}
