import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/data/Products/products_resonse/drink.dart';
import 'package:ailoitte/data/Products/products_resonse/products_resonse.dart';
import 'package:ailoitte/app/globals/extentions.dart';
extension ProductToDOmain on ProductsResponse? {
  ProductsModal toDomain() {
    return ProductsModal(
        drinks: this?.drinks?.map((e) => e.toDomain()).toList() ?? []);
  }
}

extension DrinksToDomain on Drink? {
  DrinkModal toDomain() {
    return DrinkModal(
        idDrink: this?.idDrink.orEmpty() ?? '',
        strDrink: this?.strDrink.orEmpty() ?? '',
        strCategory: this?.strCategory.orEmpty() ?? '',
        strAlcoholic: this?.strAlcoholic.orEmpty() ?? '',
        strGlass: this?.strGlass.orEmpty() ?? '',
        strInstructions: this?.strInstructions.orEmpty() ?? '',
        strInstructionsDe: this?.strInstructionsDe.orEmpty() ?? '',
        strInstructionsIt: this?.strInstructionsIt.orEmpty() ?? '',
        strDrinkThumb: this?.strDrinkThumb.orEmpty() ?? '',
        strIngredient1: this?.strIngredient1.orEmpty() ?? '',
        strIngredient2: this?.strIngredient2.orEmpty() ?? '',
        strIngredient3: this?.strIngredient3.orEmpty() ?? '',
        strIngredient4: this?.strIngredient4.orEmpty() ?? '',
        strIngredient5: this?.strIngredient5.orEmpty() ?? '',
        strMeasure1: this?.strMeasure1.orEmpty() ?? '',
        strMeasure2: this?.strMeasure2.orEmpty() ?? '',
        strMeasure3: this?.strMeasure3.orEmpty() ?? '',
        strMeasure4: this?.strMeasure4.orEmpty() ?? '',
        strMeasure5: this?.strMeasure5.orEmpty() ?? '',
        strCreativeCommonsConfirmed:
            this?.strCreativeCommonsConfirmed.orEmpty() ?? '',
        dateModified: this?.dateModified.orEmpty() ?? '');
  }
}

