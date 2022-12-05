import 'package:flutter/material.dart';

import '../models/pokemon.dart';
import '../widgets/pokemon_item.dart';

class FavouritesScreen extends StatelessWidget {

  final List<Pokemon> favouritePokemons;
  FavouritesScreen({required this.favouritePokemons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              // childAspectRatio: 5 / 4,
              childAspectRatio: 0.75),
          itemCount: favouritePokemons.length,
          itemBuilder: (ctx, index) {
            return PokemonItem(
              poki: favouritePokemons[index],
              color: Colors.deepOrange,
            );
          }),
    );
  }
}
