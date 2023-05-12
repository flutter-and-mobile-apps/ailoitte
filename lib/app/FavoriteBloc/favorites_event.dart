part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.started() = _FavoritesEventStarted;
    const factory FavoritesEvent.addItem(DrinkModal item) = _FavoritesEventAddItem;
    const factory FavoritesEvent.removeItem(String id) = _FavoritesEventRemoveItem;
}