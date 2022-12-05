import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/pokemon.dart';

class PokemonDetailScreen extends StatefulWidget {
  PokemonDetailScreen({required this.favourite});

  static const String routeName = "/pokemon_detail_screen";

  final Function favourite;

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  var abilityIconClicked=false;

  void _abilityClicker(){
    setState((){
      if(abilityIconClicked){
        abilityIconClicked=false;
      }
      else{
        abilityIconClicked=true;
      };
    });
  }

  Widget BuildLableHeading(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }

  Widget BuildLable(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Widget BuildSized() {
    return const SizedBox(
      height: 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> routesArgs =
        (ModalRoute.of(context)?.settings.arguments) as Map<String, dynamic>;
    final Pokemon selectedPokemon = routesArgs["pokemon"];
    final Color color = routesArgs["color"];

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPokemon.name),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // gradient: LinearGradient(
                    //   colors:<Color> [
                    //     color.withOpacity(0.9),
                    //     color.withOpacity(0.7)
                    //   ],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight
                    // )
                    gradient: RadialGradient(
                        radius: 1.0,
                        center: const Alignment(-0.8, -0.6),
                        colors: <Color>[
                          color.withOpacity(0.9),
                          color.withOpacity(0.7),
                        ])),
                margin: const EdgeInsets.all(10),
                child: Image.network(
                  selectedPokemon.imgURL,
                  height: 230,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1)),
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.all(15),
                  child: Text(
                    selectedPokemon.description,
                    style: Theme.of(context).textTheme.displaySmall,
                  )),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                    border: Border.all(width: 1)),
                child: (abilityIconClicked==true)?Container(
                  height: 116,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: (){
                      _abilityClicker();
                    },
                      child: BuildLable(selectedPokemon.ability["Description"]??"no ability", context)
                  ),
                ):Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        BuildLableHeading("Height", context),
                        BuildSized(),
                        BuildLable("${selectedPokemon.height}", context),
                        BuildSized(),
                        BuildLableHeading("Weight", context),
                        BuildSized(),
                        BuildLable("${selectedPokemon.weight}", context),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        BuildLableHeading("Category", context),
                        BuildSized(),
                        BuildLable(selectedPokemon.category, context),
                        BuildSized(),
                        BuildLableHeading("Ability", context),
                        BuildSized(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            BuildLable(
                                selectedPokemon.ability["Ability"] ?? "hello",
                                context),
                           const SizedBox(
                             width: 10,
                           ),
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Colors.white.withOpacity(0.85),
                                    Colors.white.withOpacity(0.7),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )
                              ),
                              child: IconButton(
                                    iconSize:26,
                                    onPressed: _abilityClicker,
                                    icon: const Icon(Icons.question_mark)),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { widget.favourite(selectedPokemon.id); },
        child: Icon(Icons.star),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
