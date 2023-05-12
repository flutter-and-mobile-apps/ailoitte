import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/app/FavoriteBloc/favorites_bloc.dart';
import 'package:ailoitte/app/Products/products_bloc.dart';
import 'package:ailoitte/presentation/Favorites/favorites_page.dart';
import 'package:ailoitte/presentation/Products/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, favState) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (string) {
                      BlocProvider.of<ProductsBloc>(context)
                          .add(ProductsEvent.search(string));
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenFavorites()));
                  },
                  child: Stack(
                    children: [
                      const Icon(
                        Icons.favorite,
                        size: 32,
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                        child: Text(
                          favState.list.length.toString(),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (!state.isLoading &&
              !state.hasError &&
              state.products.drinks.isEmpty) {
            return Center(
              child: BlocBuilder<FavoritesBloc, FavoritesState>(
                builder: (context, favState) {
                  return const Center(

                    child: Text("Search for a product"),
                  );
                },
              ),
            );
          }
          if (state.hasError && !state.isLoading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.error),
                  Text(state.errorMessage ?? ''),
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<ProductsBloc>(context)
                            .add(const ProductsEvent.started());
                      },
                      child: const Text("Reload"))
                ],
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemBuilder: (_, i) {
                final item = state.products.drinks[i];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailsScreen(
                                  item: item,
                                )));
                  },
                  child: ListTile(
                    leading: Image.network(item.strDrinkThumb),
                    title: Text(item.strDrink),
                  ),
                );
              },
              itemCount: state.products.drinks.length,
              separatorBuilder: (_, i) => const Divider(),
            ),
          );
        },
      ),
    );
  }
}
