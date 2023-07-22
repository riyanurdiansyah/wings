import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wings_mobile/core/custom_error.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';

import '../entities/user/user_entity.dart';
import 'api_service.dart';

class ApiServiceImpl implements ApiService {
  @override
  Future<Either<CustomError, bool>> login(Map<String, dynamic> body) async {
    try {
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: body["email"],
        password: body["password"],
      );

      if (response.user == null) {
        return Left(CustomError(404, "User is not found"));
      }

      return const Right(true);
    } catch (e) {
      return Left(CustomError(400, "Periksa email dan password"));
    }
  }

  @override
  Future<Either<CustomError, UserEntity>> getUserByUsername(
      String username) async {
    try {
      final response = await FirebaseFirestore.instance
          .collection("users")
          .where("username", isEqualTo: username)
          .get();
      if (response.docs.isEmpty) {
        return Left(CustomError(404, "User is not found"));
      }

      return Right(UserEntity.fromJson(response.docs[0].data()));
    } catch (e) {
      return Left(CustomError(400, e.toString()));
    }
  }

  @override
  Future<Either<CustomError, List<ProductEntity>>> getAllProduct() async {
    List<ProductEntity> products = [];
    try {
      final response =
          await FirebaseFirestore.instance.collection("barang").get();
      print("CEL : ${response.docs}");
      for (var dataproduk in response.docs) {
        products.add(ProductEntity.fromJson(dataproduk.data()));
      }
      return Right(products);
    } catch (e) {
      return Left(CustomError(400, e.toString()));
    }
  }

  @override
  Future<Either<CustomError, bool>> insertOrder(
      Map<String, dynamic> body) async {
    try {
      return await FirebaseFirestore.instance
          .collection("order")
          .doc(body["uid"])
          .set(body)
          .then((value) => const Right(true));
    } catch (e) {
      return Left(CustomError(400, e.toString()));
    }
  }
}
