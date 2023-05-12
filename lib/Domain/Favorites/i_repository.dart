

import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/data/Favorites/hive_model.dart';
import 'package:dartz/dartz.dart';

import '../../app/globals/failiure.dart';

abstract class IFavoriteRepository {
  Future<Either<Failure, dynamic>> getProducts();
  Future<Either<Failure, dynamic>> saveProducts(List<DrinkModal> drinkModal);
}