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
  print(AndGame.parse(input, andGameSymbol: AndGameSymbol.ampersand));
  print(AndGame.parse(input, andGameSymbol: AndGameSymbol.and));
  print(AndGame.parse(input));

  // using extension
  print(input.parse(andGameSymbol: AndGameSymbol.ampersand));
  print(input.parse(andGameSymbol: AndGameSymbol.and));
  print(input.parse());
}
```

## Additional information

Inspired by [and-game](https://twitter.com/apoorv_taneja/status/1440030799579938821?s=20) created by [Apoorv Taneja](https://github.com/plxity). Enjoy :P