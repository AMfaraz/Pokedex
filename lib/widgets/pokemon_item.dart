import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/pokemon_detail_screen.dart';

class PokemonItem extends StatelessWidget {
  final Color color;
  final Pokemon poki;

  PokemonItem({
    required this.color,
    required this.poki,
  });

  void _selectPokemon(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(PokemonDetailScreen.routeName,arguments: {"pokemon":poki,"color":color});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        _selectPokemon(context);
      },
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100,
                margin: const EdgeInsets.only(
                  top: 50,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180),
                      topRight: Radius.circular(180),
                    ),
                    color: color,
                    gradient: LinearGradient(colors: [
                      color.withOpacity(1),
                      color.withOpacity(0.6)
                    ])),
              ),
              Positioned(
                left: 30,
                child: Image.network(
                  poki.imgURL,
                  height: 170,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
          Text(
            poki.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
