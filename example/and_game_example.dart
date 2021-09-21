import 'package:and_game/and_game.dart';

void main() {
  final input = ['Jalebi', 'Fafda', 'Dhokla'];

  // using method
  print(AndGame.parse(input, andGameSymbol: AndGameSymbol.ampersand));
  print(AndGame.parse(input, andGameSymbol: AndGameSymbol.and));
  print(AndGame.parse(input));

  // using extension
  print(input.parse(andGameSymbol: AndGameSymbol.ampersand));
  print(input.parse(andGameSymbol: AndGameSymbol.and));
  print(input.parse());
}
