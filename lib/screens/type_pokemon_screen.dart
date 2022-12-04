import 'package:flutter/material.dart';

import '../widgets/pokemon_item.dart';
import '../dummy_data.dart';

class TypePokemonScreen extends StatelessWidget {
  static const routeName = "/type_pokemon_screen";

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        (ModalRoute.of(context)?.settings.arguments) as Map<String, dynamic>;

    final pokemons = DUMMY_POKEMONS.where((pokemon) {
      for (int i = 0; i < pokemon.types.length; i++) {
        if (pokemon.types[i] == routesArgs["title"]) {
          return true;
        }
      }
      return false;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(routesArgs["title"]),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              // childAspectRatio: 5 / 4,
              childAspectRatio: 0.75),
          itemCount: pokemons.length,
          itemBuilder: (ctx, index) {
            return PokemonItem(
              poki: pokemons[index],
              color: routesArgs["color"],
            );
          }),
    );
  }
}
