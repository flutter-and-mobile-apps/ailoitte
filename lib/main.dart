import 'package:ailoitte/Presentation/Products/products_page.dart';
import 'package:ailoitte/app/DI.dart';
import 'package:ailoitte/app/FavoriteBloc/favorites_bloc.dart';
import 'package:ailoitte/app/Products/products_bloc.dart';
import 'package:ailoitte/data/Favorites/repository.dart';
import 'package:ailoitte/data/Products/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/Favorites/hive_model.dart';

void main() async {
  await setUpDep();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(DrinkHiveModalAdapter().typeId)) {
    Hive.registerAdapter(DrinkHiveModalAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>(
            create: (context) =>
                ProductsBloc(productsRepository: getIt<ProductsRepository>())
                  ..add(const ProductsEvent.started())),
        BlocProvider<FavoritesBloc>(
            create: (context) =>
            FavoritesBloc(repository: getIt<FavoriteRepository>())
              ..add(const FavoritesEvent.started()))
      ],
      child: const MaterialApp(
        home: ProductsPage(),
      ),
    );
  }
}
