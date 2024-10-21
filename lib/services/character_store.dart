import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/services/firestore_service.dart';

class CharacterStore extends ChangeNotifier {
  final List<Character> _characters = [
    Character(
        name: "Klara", slogan: "Kapumf!", vocation: Vocation.wizard, id: "1"),
    Character(
        id: '2',
        name: 'Jonny',
        vocation: Vocation.junkie,
        slogan: 'Light me up...'),
    Character(
        id: '3',
        name: 'Crimson',
        vocation: Vocation.raider,
        slogan: 'Fire in the hole!'),
    Character(
        id: '4',
        name: 'Shaun',
        vocation: Vocation.ninja,
        slogan: 'Alright then gang.'),
  ];

  get characters => _characters;

  //add character
  void addCharacter(Character character) {
    FirestoreService.addCharacter(character);
    _characters.add(character);
    notifyListeners(); //self explan
  }
}
