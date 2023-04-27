class ProductsModal {
  List<DrinkModal> drinks;

  ProductsModal({required this.drinks});
  factory ProductsModal.empty() => ProductsModal(drinks: []);
}

class DrinkModal {
  String idDrink;
  String strDrink;
  dynamic strDrinkAlternate;
  dynamic strTags;
  dynamic strVideo;
  String strCategory;
  dynamic strIba;
  String strAlcoholic;
  String strGlass;
  String strInstructions;
  dynamic strInstructionsEs;
  String strInstructionsDe;
  dynamic strInstructionsFr;
  String strInstructionsIt;
  dynamic strInstructionsZhHans;
  dynamic strInstructionsZhHant;
  String strDrinkThumb;
  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strIngredient5;
  dynamic strIngredient6;
  dynamic strIngredient7;
  dynamic strIngredient8;
  dynamic strIngredient9;
  dynamic strIngredient10;
  dynamic strIngredient11;
  dynamic strIngredient12;
  dynamic strIngredient13;
  dynamic strIngredient14;
  dynamic strIngredient15;
  String strMeasure1;
  String strMeasure2;
  String strMeasure3;
  String strMeasure4;
  String strMeasure5;
  dynamic strMeasure6;
  dynamic strMeasure7;
  dynamic strMeasure8;
  dynamic strMeasure9;
  dynamic strMeasure10;
  dynamic strMeasure11;
  dynamic strMeasure12;
  dynamic strMeasure13;
  dynamic strMeasure14;
  dynamic strMeasure15;
  dynamic strImageSource;
  dynamic strImageAttribution;
  String strCreativeCommonsConfirmed;
  String dateModified;

  DrinkModal({
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
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,
    required this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    required this.strCreativeCommonsConfirmed,
    required this.dateModified,
  });
}
