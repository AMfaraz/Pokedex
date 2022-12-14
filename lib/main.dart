import 'package:flutter/material.dart';

import 'package:pokedex/dummy_data.dart';
import 'package:pokedex/screens/pokemon_detail_screen.dart';
import 'package:pokedex/screens/tabs_screen.dart';
import 'package:pokedex/screens/type_pokemon_screen.dart';
import '../models/pokemon.dart';
import 'package:pokedex/screens/types_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Pokemon> _allPokemons=DUMMY_POKEMONS;
  List<Pokemon> favouritePokemons=[];

  void isFavourite(String Id){
    setState((){
      final index=favouritePokemons.indexWhere((poki) => poki.id==Id);
      if(index<0){
        favouritePokemons.add(_allPokemons.firstWhere((poki) => poki.id==Id));
      }
      else{
        favouritePokemons.removeAt(index);
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.blue,
          primarySwatch: Colors.amber,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: const TextTheme(
            labelMedium: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
            labelSmall: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            displaySmall: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
              titleLarge: TextStyle(
            fontSize: 30,
            )
          ),

      ),
      // home: TypeScreen(),
      routes: {
        // '/': (ctx) => TypeScreen(),
        '/':(ctx)=>TabsScreen(favouritePokemons: favouritePokemons),
        TypePokemonScreen.routeName: (ctx) => TypePokemonScreen(),
        PokemonDetailScreen.routeName: (ctx) => PokemonDetailScreen(favourite: isFavourite),
      },
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Pokedex"),
//         ),
//         body: Text("Hello"));
//   }
// }
