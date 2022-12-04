import 'package:flutter/material.dart';

import './models/pokemon.dart';
import './models/type.dart';

const DUMMY_POKEMONS = const [
  const Pokemon(
    id: "1",
    name: "Bulbasaur",
    description:
        "While it is young, it uses the nutrients that are stored in the seed on its back in order to grow.",
    category: "Seed",
    height: 2.3,
    weight: 6.8,
    imgURL: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png",
    ability: {
      "Ability": "Overgrow",
      "Description": "Powers up Grass-type moves when the Pokémon’s HP is low."
    },
    types: const [
      "Grass",
      "Posion",
    ],
    weakness: const ["Fire", "Psychic", "Flying", "Ice"],
  ),
  const Pokemon(
      id: "4",
      name: "Charmander",
      description:
          "From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.",
      category: "Lizard",
      height: 2,
      weight: 8.4,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png",
      ability: {
        "Ability": "Blaze",
        "Description": "Powers up Fire-type moves when the Pokémon’s HP is low."
      },
      types: const [
        "Fire"
      ],
      weakness: const [
        "Water",
        "Ground",
        "Rock",
      ]),
  const Pokemon(
      id: "7",
      name: "Squirtle",
      description:
          "When it feels threatened, it draws its limbs inside its shell and sprays water from its mouth.",
      category: "Tiny Turtle",
      height: 1.8,
      weight: 8.9,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png",
      ability: {
        "Ability": "Torrent",
        "Description":
            "Powers up Water-type moves when the Pokémon’s HP is low.",
      },
      types: [
        "Water",
      ],
      weakness: [
        "Grass",
        "Electric",
      ]),
  const Pokemon(
      id: "10",
      name: "Caterpie",
      description:
          "For protection, it releases a horrible stench from the antenna on its head to drive away enemies.",
      category: "Worm",
      height: 1,
      weight: 2.9,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png",
      ability: {
        "Ability": "Shield Dust",
        "Description":
            "This Pokémon’s dust blocks the additional effects of attacks taken.",
      },
      types: [
        "Bug"
      ],
      weakness: [
        "Fire",
        "Flying",
        "Rock",
      ]),
  const Pokemon(
      id: "13",
      name: "Weedle",
      description:
          "Beware of the sharp stinger on its head. It hides in grass and bushes where it eats leaves.",
      category: "Hairy Bug",
      height: 1,
      weight: 3.2,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/013.png",
      ability: {
        "Ability": "Shield Dust",
        "Description":
            "For protection, it releases a horrible stench from the antenna on its head to drive away enemies.",
      },
      types: [
        "Bug",
        "Poison"
      ],
      weakness: [
        "Fire",
        "Psychic",
        "Flying",
        "Rock",
      ]),
  const Pokemon(
      id: "16",
      name: "Pidgey",
      description:
          "Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.",
      category: "Tiny Bird",
      height: 1,
      weight: 1.8,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/016.png",
      ability: {
        "Ability": "Keen Eye",
        "Description":
            "Keen eyes prevent other Pokémon from lowering this Pokémon’s accuracy."
      },
      types: [
        "Normal",
        "Flying"
      ],
      weakness: [
        "Electric",
        "Ice",
        "Rock"
      ]),
  const Pokemon(
      id: "19",
      name: "Rattata",
      description:
          "Will chew on anything with its fangs. If you see one, you can be certain that 40 more live in the area.",
      category: "Mouse",
      height: 1,
      weight: 3.4,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/019.png",
      ability: {
        "Ability": "Guts",
        "Description":
            "It’s so gutsy that having a status condition boosts the Pokémon’s Attack stat."
      },
      types: [
        "Normal"
      ],
      weakness: [
        "Fighting"
      ]),
  const Pokemon(
    id: "23",
    name: "Ekans",
    description:
        "The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.",
    category: "Snake",
    height: 6.7,
    weight: 6.8,
    imgURL: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/023.png",
    ability: {
      "Abililty": "Shed Skin",
      "Description":
          "The Pokémon may heal its own status conditions by shedding its skin."
    },
    types: ["Poison"],
    weakness: ["Psychic", "Ground"],
  ),
  const Pokemon(
      id: "25",
      name: "Pikachu",
      description:
          "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.",
      category: "Mouse",
      height: 1.4,
      weight: 5.9,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png",
      ability: {
        "Ability": "Static",
        "Desciption":
            "The Pokémon is charged with static electricity, so contact with it may cause paralysis."
      },
      types: [
        "Electric"
      ],
      weakness: [
        "Ground"
      ]),
  const Pokemon(
      id: "27",
      name: "SandShrew",
      description:
          "It loves to bathe in the grit of dry, sandy areas. By sand bathing, the Pokémon rids itself of dirt and moisture clinging to its body.",
      category: "Mouse",
      height: 2.0,
      weight: 12.02,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/027.png",
      ability: {
        "Ability": "Sand Veil",
        "Description": "Boosts the Pokémon’s evasiveness in a sandstorm."
      },
      types: [
        "Ground"
      ],
      weakness: [
        "Water",
        "Grass",
        "Ice"
      ]),
  const Pokemon(
      id: "35",
      name: "Clefairy",
      description:
          "It is said that happiness will come to those who see a gathering of Clefairy dancing under a full moon",
      category: "Fairy",
      height: 2.0,
      weight: 7.4,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png",
      ability: {
        "Ability": "Cute Charm",
        "Description": "Contact with the Pokémon may cause infatuation",
      },
      types: [
        "Fairy"
      ],
      weakness: [
        "Steel",
        "Poison"
      ]),
  const Pokemon(
    id: "56",
    name: "Mankey",
    description:
        "An agile Pokémon that lives in trees. It angers easily and will not hesitate to attack anything.",
    category: "Pig Monkey",
    height: 1.8,
    weight: 27.9,
    imgURL:
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/056.png",
    ability: {
      "Ability": "Anger Point",
      "Description":
          "The Pokémon is angered when it takes a critical hit, and that maxes its Attack stat."
    },
    types: ["Fighting"],
    weakness: [
      "Psychic",
      "Flying",
      "Fairy",
    ],
  ),
  const Pokemon(
      id: "63",
      name: "Abra",
      description:
          "This Pokémon uses its psychic powers while it sleeps. The contents of Abra’s dreams affect the powers that the Pokémon wields.",
      category: "Psi",
      height: 2.11,
      weight: 19.5,
      imgURL:
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/063.png",
      ability: {
        "Ability": "Inner Focus",
        "Description":
            "The Pokémon’s intensely focused, and that protects the Pokémon from flinching."
      },
      types: [
        "Psychic"
      ],
      weakness: [
        "Ghost",
        "Dark",
        "Bug",
      ]),
  const Pokemon(
      id: "81",
      name: "Magnemite",
      description: "At times, Magnemite runs out of electricity and ends up on the ground. If you give batteries to a grounded Magnemite, it’ll start moving again.",
      category: "Magnet",
      height: 1.0,
      weight: 5.9,
      imgURL: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/081.png",
      ability: {
        "Ability": "Magnet Pull",
        "Description": "Prevents Steel-type Pokémon from escaping using its magnetic force."
      },
      types: [
        "Electric",
        "Steel"
      ],
      weakness: [
        "Fire",
        "Fighting",
        "Ground"
      ],)
];

const DUMMY_TYPE= const [
  const Type(id: "t1", title: "Grass", color: Colors.greenAccent),
  const Type(id: "t2", title: "Fire", color: Colors.red),
  const Type(id: "t3", title: "Water", color: Colors.blue),
  const Type(id: "t4", title: "Electric", color: Colors.yellowAccent),
  const Type(id: "t5", title: "Psychic", color: Colors.pinkAccent),
  const Type(id: "t6", title: "Steel", color: Colors.grey),
  const Type(id: "t7", title: "Ground", color: Colors.brown),
  const Type(id: "t8", title: "Bug", color: Colors.lightGreenAccent),
  const Type(id: "t9", title: "Flying", color: Colors.blueGrey),
  const Type(id: "t10", title: "Fighting", color: Colors.orange),
  const Type(id: "t11", title: "Normal", color: Colors.tealAccent),
  const Type(id: "t12", title: "Fairy", color: Colors.pink),
];