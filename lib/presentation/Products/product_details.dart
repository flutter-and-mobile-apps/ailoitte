import 'package:ailoitte/Domain/Products/models.dart';
import 'package:ailoitte/app/FavoriteBloc/favorites_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, required this.item}) : super(key: key);
  final DrinkModal item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, favState) {
          return FloatingActionButton(
            onPressed: () {
              favState.list.any((element) => element.idDrink == item.idDrink)
                  ? BlocProvider.of<FavoritesBloc>(context)
                  .add(FavoritesEvent.removeItem(item.idDrink))
                  : BlocProvider.of<FavoritesBloc>(context)
                  .add(FavoritesEvent.addItem(item));
            },
            child: Icon(
                favState.list.any((element) => element.idDrink == item.idDrink)
                    ? Icons.favorite
                    : Icons.favorite_outline),
          );
        },
      ),
      appBar: AppBar(
        title: Text(item.strDrink),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
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
      ),
    );
  }
}