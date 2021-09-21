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
    input.parse(
      andGameSymbol: AndGameSymbol.ampersand,
    ),
  ); // Jalebi, Fafda, & Dhokla
  print(
    input.parse(
      andGameSymbol: AndGameSymbol.and,
    ),
  ); // Jalebi, Fafda, and Dhokla
  print(input.parse()); // Jalebi, Fafda, and Dhokla
}
