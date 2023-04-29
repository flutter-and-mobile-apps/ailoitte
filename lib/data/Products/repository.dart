import 'package:ailoitte/Domain/Products/i_repository.dart';
import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/app/globals/failiure.dart';
import 'package:ailoitte/data/Products/products_resonse/products_resonse.dart';
import 'package:ailoitte/data/core/DioManager.dart';
import 'package:ailoitte/data/core/mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ProductsRepository implements IProductsRepository {
  final DioManager dio;
  ProductsRepository({required this.dio});
  @override
  Future<Either<Failure, ProductsModal>> getProducts(String key) async {
    try {
      final response = await dio.get('/1/search.php?s=$key');
      if (response.statusCode == 200) {
        final result = ProductsResponse.fromJson(response.data);

        return Right(result.toDomain());
      } else {
        return Left(Failure("Unknown error occurred"));
      }
    } on DioError catch (e) {
      return Left(Failure(e.message ?? ''));
    } catch (e) {
      return Left(Failure("Unknown error occurred"));
    }
  }
}
