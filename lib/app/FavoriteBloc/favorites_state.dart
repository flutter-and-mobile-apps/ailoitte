part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial(
    {
      required List<DrinkModal> list,
      required bool isLoading
    }
  ) = _Initial;
}
