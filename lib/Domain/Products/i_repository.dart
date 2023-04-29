import 'package:ailoitte/app/globals/failiure.dart';
import 'package:ailoitte/data/core/DioManager.dart';
import 'package:dartz/dartz.dart';

abstract class IProductsRepository {
  Future<Either<Failure, dynamic>> getProducts(String key);
}
