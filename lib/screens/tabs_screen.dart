import 'package:flutter/material.dart';
import 'package:pokedex/screens/favourites_screen.dart';
import 'package:pokedex/screens/types_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  late  List<Map<String, dynamic>>  _pages=[
    {"page":TypeScreen(),"title":"Types"},
    {"page":FavouritesScreen(),"title":"Favourites"}
  ];

  // @override
  // void initState(){
  //   _pages=[
  //     {"page":TypeScreen(),"title":"Types"},
  //     {"page":FavouritesScreen(),"title":"Favourites"}
  //   ];
  //   super.initState();
  // }

  var _selectedPageIndex=0;

  void _changeIndex(int index){
    setState((){
      _selectedPageIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]["title"]),
      ),
      body: _pages[_selectedPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedPageIndex,
        onTap:_changeIndex,
        unselectedFontSize: 13,
        selectedFontSize: 16,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.category_outlined),
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
          label: "Categories"),
          BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
          label: "Favourites")
        ],
      ),
    );
  }
}
