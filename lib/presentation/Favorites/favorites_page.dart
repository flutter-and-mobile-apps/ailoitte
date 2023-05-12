import 'package:ailoitte/app/FavoriteBloc/favorites_bloc.dart';
import 'package:ailoitte/app/FavoriteBloc/favorites_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final item = state.list[index];
              return ListTile(
                leading: Image.network(item.strDrinkThumb),
                title: Text(item.strDrink),
                trailing: IconButton(
                  onPressed: () {
                    BlocProvider.of<FavoritesBloc>(context).add(FavoritesEvent.removeItem(item.idDrink));
                  },
                  icon: const Icon(Icons.delete),
                ),
              );
            },
            itemCount: state.list.length,
            separatorBuilder: (context, i) => const Divider(),
          );
        },
      ),
    );
  }
}
