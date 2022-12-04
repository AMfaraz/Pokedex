import 'package:flutter/material.dart ';

import 'package:pokedex/widgets/type_item.dart';
import '../dummy_data.dart';

class TypeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Types"),
      // ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.6,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 5/4,
        ),
        children: <Widget>[
          ...DUMMY_TYPE.map((type) =>
              TypeItem(title: type.title, id: type.id, color: type.color)).toList()
        ],
      ),
    );
  }
}
