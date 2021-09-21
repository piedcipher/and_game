import 'package:and_game/and_game.dart';
import 'package:test/test.dart';

void main() {
  group('and_game tests', () {
    final input = ['Jalebi', 'Fafda', 'Dhokla'];
    test('method: & (Ampersand) Test', () {
      expect(
        AndGame.parse(input, andGameSymbol: AndGameSymbol.ampersand),
        'Jalebi, Fafda, & Dhokla',
      );
    });

    test("method: 'and' Tests", () {
      expect(
        AndGame.parse(input, andGameSymbol: AndGameSymbol.and),
        'Jalebi, Fafda, and Dhokla',
      );
      expect(AndGame.parse(input), 'Jalebi, Fafda, and Dhokla');
    });

    test('extension: & (Ampersand) Test', () {
      expect(
        input.parse(andGameSymbol: AndGameSymbol.ampersand),
        'Jalebi, Fafda, & Dhokla',
      );
    });

    test("extension: 'and' Tests", () {
      expect(
        input.parse(andGameSymbol: AndGameSymbol.and),
        'Jalebi, Fafda, and Dhokla',
      );
      expect(input.parse(), 'Jalebi, Fafda, and Dhokla');
    });
  });
}
