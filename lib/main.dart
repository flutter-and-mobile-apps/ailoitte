import 'package:ailoitte/Presentation/Products/products_page.dart';
import 'package:ailoitte/app/DI.dart';
import 'package:ailoitte/app/Products/products_bloc.dart';
import 'package:ailoitte/data/Products/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await setUpDep();
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
                  ..add(const ProductsEvent.started()))
      ],
      child: const MaterialApp(
        home: ProductsPage(),
      ),
    );
  }
}
