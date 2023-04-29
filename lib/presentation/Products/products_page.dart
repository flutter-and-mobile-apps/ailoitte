import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/app/Products/products_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextField(
        onChanged: (string){
          BlocProvider.of<ProductsBloc>(context).add(ProductsEvent.search(string));
        },
      ),),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
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

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, required this.item}) : super(key: key);
  final DrinkModal item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.strDrink),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(item.strDrinkThumb),
            const Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.strInstructions),
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Category: "),
                Text(item.strCategory),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Type: "),
                Text(item.strAlcoholic),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Glass: "),
                Text(item.strGlass),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const Text("Ingredient"),
            Wrap(
              spacing: 5,
              children: [
                Text("${item.strIngredient1} : ${item.strMeasure1}"),
                Text("${item.strIngredient2} : ${item.strMeasure2}"),
                Text("${item.strIngredient3} : ${item.strMeasure3}"),
                Text("${item.strIngredient4} : ${item.strMeasure4}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
