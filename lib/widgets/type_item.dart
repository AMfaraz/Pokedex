import 'package:flutter/material.dart';

import '../screens/type_pokemon_screen.dart';

class TypeItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  TypeItem({required this.title, required this.id, required this.color});

  void _selectType(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        TypePokemonScreen.routeName, arguments: {"id": id, "title": title,"color":color}
    );
  }



  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
          softWrap: false,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              color.withOpacity(0.8),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(13),
      ),
      onTap: (){
        _selectType(context);
      },
    );
  }
}
