import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/data/Favorites/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoriteRepository repository;
  FavoritesBloc({required this.repository})
      : super(const _Initial(isLoading: false, list: [])) {
    on<_FavoritesEventStarted>((event, emit) async {
      return await repository.getProducts().then((value) =>
          value.fold((l) => emit(state), (r) => emit(state.copyWith(list: r))));
    });
    on<_FavoritesEventAddItem>((event, emit) async {
      final res = await repository.saveProducts([...state.list, event.item]);
      res.fold((l) => emit(state),
          (r) => emit(state.copyWith(list: [...state.list, event.item])));
    });
    on<_FavoritesEventRemoveItem>((event, emit) async {
      if (state.isLoading) return;
      List<DrinkModal> list = [...state.list];
      list.removeWhere((element) => element.idDrink == event.id);
      final res = await repository.saveProducts(list);
      return res.fold((l) => emit(state),
          (r) => emit(state.copyWith(list: list, isLoading: false)));
    });
  }
}
