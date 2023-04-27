import 'package:json_annotation/json_annotation.dart';

import 'drink.dart';

part 'products_resonse.g.dart';

@JsonSerializable()
class ProductsResponse {
  List<Drink>? drinks;

  ProductsResponse({this.drinks});

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseFromJson(json);
  }

}
