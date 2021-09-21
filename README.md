# And Game

A dart package to append either `&` or `and` at the end of a List.

## Features

- Appends `&` or `and` at the end of the list.
- Available as method or extension.
- Both dart & flutter projects are supported.

## Getting started

Add it under `dependencies` to pubspec.yaml to use it.

## Usage

```dart
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
```

## Additional information

Inspired by [and-game](https://twitter.com/apoorv_taneja/status/1440030799579938821?s=20) created by [Apoorv Taneja](https://github.com/plxity). Enjoy :P
