import 'package:ailoitte/Domain/Favorites/i_repository.dart';
import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/app/globals/failiure.dart';
import 'package:ailoitte/data/Favorites/hive_model.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoriteRepository implements IFavoriteRepository {
  @override
  Future<Either<Failure, List<DrinkModal>>> getProducts() async {
    try {
      final data = await _getData();
      final result = data?.map((e) => e.toModal()).toList() ?? [];
      return Right(result);
    } catch (e) {
      return Left(Failure("Unknown error occurred"));
    }
  }

  @override
  Future<Either<Failure, dynamic>> saveProducts(
      List<DrinkModal> drinkModal) async {
    try {
      if (drinkModal.isEmpty) {
        await _clearDb();
        return const Right("Success");
      }
      await _saveData(drinkModal.map((e) => e.toHiveModal()).toList());
      return const Right("Success");
    } catch (e) {
      return Left(Failure("Unknown error occurred"));
    }
  }

  Future<void> _saveData(List<DrinkHiveModal> countryHiveModal) async {
    final favDb = await Hive.openBox<DrinkHiveModal>(AppStrings.drinks);
    favDb.clear();
    await favDb.addAll(countryHiveModal);
    await favDb.close();
  }

  Future<List<DrinkHiveModal>?> _getData() async {
    final favDb = await Hive.openBox<DrinkHiveModal>(AppStrings.drinks);
    if (favDb.values.isEmpty) {
      return null;
    }
    return favDb.values.toList();
  }

  Future<void> _clearDb() async {
    final favDb = await Hive.openBox<DrinkHiveModal>(AppStrings.drinks);
    await favDb.clear();
    await favDb.close();
  }
}

class AppStrings {
  static String drinks = 'drinksBox';
}
