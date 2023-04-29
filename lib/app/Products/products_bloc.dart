import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/data/Products/repository.dart';
import 'package:ailoitte/data/core/DioManager.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepository productsRepository;
  ProductsBloc({required this.productsRepository})
      : super(_Initial(isLoading: false, products: ProductsModal.empty(), hasError: false)) {
    on<_Started>((event, emit) => emit(state));
    on<_Search>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await productsRepository.getProducts(event.key);
      result.fold((l) {
        emit(state.copyWith(isLoading: false,hasError: true,errorMessage: l.message));
      }, (r) => emit(state.copyWith(isLoading: false, products: r,hasError: false)));
    });
  }
}
