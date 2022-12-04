class Pokemon {
  final String id;
  final String name;
  final String description;
  final String category;
  final double height;
  final double weight;
  final String imgURL;
  final Map<String,String> ability;
  final List<String> types;
  final List<String> weakness;

  const Pokemon({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.height,
    required this.weight,
    required this.imgURL,
    required this.ability,
    required this.types,
    required this.weakness,
  });
}
