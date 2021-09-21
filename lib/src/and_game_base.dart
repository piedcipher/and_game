/// symbol used as end delimiter in the list.
enum AndGameSymbol {
  and,
  ampersand,
}

/// provides a method to add the `and` symbol at the end of the list.
abstract class AndGame {
  /// returns a string with the `and` symbol at the end of the list.
  static String parse(
    List<String> input, {
    AndGameSymbol andGameSymbol = AndGameSymbol.and,
  }) {
    if (input.isEmpty) {
      throw 'List is emtpy';
    }

    var output = '';
    for (int i = 0; i < input.length; i++) {
      if (i == input.length - 1) {
        output += andGameSymbol == AndGameSymbol.ampersand ? '& ' : 'and ';
        output += input[i];
      } else {
        output += input[i] + ', ';
      }
    }
    return output;
  }
}

/// provides an extension method to add the `and` symbol at the end of the list.
extension AndGameParse on List<String> {
  /// returns a string with the `and` symbol at the end of the list.
  String andGameParse({
    AndGameSymbol andGameSymbol = AndGameSymbol.and,
  }) =>
      AndGame.parse(this, andGameSymbol: andGameSymbol);
}
