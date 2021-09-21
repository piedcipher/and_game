import 'package:and_game/and_game.dart';

void main() {
  final input = ['Jalebi', 'Fafda', 'Dhokla'];

  // using method
  print(
    AndGame.parse(
      input,
      andGameSymbol: AndGameSymbol.ampersand,
    ),
  ); // Jalebi, Fafda, & Dhokla
  print(
    AndGame.parse(
      input,
      andGameSymbol: AndGameSymbol.and,
    ),
  ); // Jalebi, Fafda, and Dhokla
  print(AndGame.parse(input)); // Jalebi, Fafda, and Dhokla

  // using extension
  print(
    input.andGameParse(
      andGameSymbol: AndGameSymbol.ampersand,
    ),
  ); // Jalebi, Fafda, & Dhokla
  print(
    input.andGameParse(
      andGameSymbol: AndGameSymbol.and,
    ),
  ); // Jalebi, Fafda, and Dhokla
  print(input.andGameParse()); // Jalebi, Fafda, and Dhokla
}
