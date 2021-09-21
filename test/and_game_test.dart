import 'package:and_game/and_game.dart';
import 'package:test/test.dart';

void main() {
  group('and_game tests', () {
    final input = ['Jalebi', 'Fafda', 'Dhokla'];
    test('& (Ampersand) Test', () {
      expect(AndGame.parse(input, andGameSymbol: AndGameSymbol.ampersand),
          'Jalebi, Fafada, & Dhokala');
    });

    test("'and' Tests", () {
      expect(AndGame.parse(input, andGameSymbol: AndGameSymbol.and),
          'Jalebi, Fafada, and Dhokala');
      expect(AndGame.parse(input), 'Jalebi, Fafada, and Dhokala');
    });
  });
}
