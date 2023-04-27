part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState.initial(
      {required ProductsModal products,
      required bool isLoading,
      required bool hasError,
      String? errorMessage}) = _Initial;
}
