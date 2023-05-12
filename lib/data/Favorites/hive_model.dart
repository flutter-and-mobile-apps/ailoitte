import 'package:ailoitte/Domain/Products/models.dart';
import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 0)
class DrinkHiveModal {
  @HiveField(0)
  String idDrink;
  @HiveField(1)
  String strDrink;
  @HiveField(2)
  dynamic strDrinkAlternate;
  @HiveField(3)
  dynamic strTags;
  @HiveField(4)
  dynamic strVideo;
  @HiveField(5)
  String strCategory;
  @HiveField(6)
  dynamic strIba;
  @HiveField(7)
  String strAlcoholic;
  @HiveField(8)
  String strGlass;
  @HiveField(9)
  String strInstructions;
  @HiveField(10)
  dynamic strInstructionsEs;
  @HiveField(11)
  String strInstructionsDe;
  @HiveField(12)
  dynamic strInstructionsFr;
  @HiveField(13)
  String strInstructionsIt;
  @HiveField(14)
  dynamic strInstructionsZhHans;
  @HiveField(15)
  dynamic strInstructionsZhHant;
  @HiveField(16)
  String strDrinkThumb;
  @HiveField(17)
  String strIngredient1;
  @HiveField(18)
  String strIngredient2;
  @HiveField(19)
  String strIngredient3;
  @HiveField(20)
  String strIngredient4;
  @HiveField(21)
  String strIngredient5;
  @HiveField(22)
  String strMeasure1;
  @HiveField(23)
  String strMeasure2;
  @HiveField(24)
  String strMeasure3;
  @HiveField(25)
  String strMeasure4;
  @HiveField(26)
  String strMeasure5;
  @HiveField(27)
  String strCreativeCommonsConfirmed;
  @HiveField(28)
  String dateModified;

  DrinkHiveModal({
    required this.idDrink,
    required this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    required this.strCategory,
    this.strIba,
    required this.strAlcoholic,
    required this.strGlass,
    required this.strInstructions,
    this.strInstructionsEs,
    required this.strInstructionsDe,
    this.strInstructionsFr,
    required this.strInstructionsIt,
    this.strInstructionsZhHans,
    this.strInstructionsZhHant,
    required this.strDrinkThumb,
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strIngredient5,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,
    required this.strMeasure5,
    required this.strCreativeCommonsConfirmed,
    required this.dateModified,
  });
}


extension DrinkToHiveModal on DrinkModal {
  DrinkHiveModal toHiveModal() {
    return DrinkHiveModal(
        idDrink: idDrink,
        strDrink: strDrink,
        strCategory: strCategory,
        strAlcoholic: strAlcoholic,
        strGlass: strGlass,
        strInstructions: strInstructions,
        strInstructionsDe: strInstructionsDe,
        strInstructionsIt: strInstructionsIt,
        strDrinkThumb: strDrinkThumb,
        strIngredient1: strIngredient1,
        strIngredient2: strIngredient2,
        strIngredient3: strIngredient3,
        strIngredient4: strIngredient4,
        strIngredient5: strIngredient5,
        strMeasure1: strMeasure1,
        strMeasure2: strMeasure2,
        strMeasure3: strMeasure3,
        strMeasure4: strMeasure4,
        strMeasure5: strMeasure5,
        strCreativeCommonsConfirmed: strCreativeCommonsConfirmed,
        dateModified: dateModified);
  }
}

extension DrinkHiveToModal on  DrinkHiveModal{
  DrinkModal toModal() {
    return DrinkModal(
        idDrink: idDrink,
        strDrink: strDrink,
        strCategory: strCategory,
        strAlcoholic: strAlcoholic,
        strGlass: strGlass,
        strInstructions: strInstructions,
        strInstructionsDe: strInstructionsDe,
        strInstructionsIt: strInstructionsIt,
        strDrinkThumb: strDrinkThumb,
        strIngredient1: strIngredient1,
        strIngredient2: strIngredient2,
        strIngredient3: strIngredient3,
        strIngredient4: strIngredient4,
        strIngredient5: strIngredient5,
        strMeasure1: strMeasure1,
        strMeasure2: strMeasure2,
        strMeasure3: strMeasure3,
        strMeasure4: strMeasure4,
        strMeasure5: strMeasure5,
        strCreativeCommonsConfirmed: strCreativeCommonsConfirmed,
        dateModified: dateModified);
  }
}
