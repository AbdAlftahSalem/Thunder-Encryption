import 'dart:math';

import 'package:test/test.dart';
import 'package:thunder_encryption/core/strings/letters_init.dart';
import 'package:thunder_encryption/thunder_encryption.dart';

void main() {
  setUpAll(() => LettersInit.instance.setupLetters());

  String roundTrip(String plain) =>
      TextDecryption.textDecryption(TextEncryption.textEncryption(plain));

  group('round trip', () {
    for (final plain in [
      'a',
      'ab',
      'abcd',
      'abcde',
      'Abd Alftah Nedal AlShanti',
      'عبد الفتاح نضال الشنطي',
      '(=++*/\$@!*)',
      '1245451',
      'Mixed عربي and English 2026!',
    ]) {
      test('"$plain"', () => expect(roundTrip(plain), plain));
    }

    test('empty string', () => expect(roundTrip(''), ''));

    test('300 random strings over the whole alphabet', () {
      final alphabet = LettersInit.instance.lettersWithStringKey.keys.toList();
      final random = Random(42);
      for (var n = 0; n < 300; n++) {
        final plain = List.generate(
          1 + random.nextInt(40),
          (_) => alphabet[random.nextInt(alphabet.length)],
        ).join();
        expect(roundTrip(plain), plain);
      }
    });
  });

  test('cipher text differs from plain text and between calls', () {
    const plain = 'Thunder Encryption';
    final first = TextEncryption.textEncryption(plain);
    final second = TextEncryption.textEncryption(plain);
    expect(first, isNot(plain));
    expect(first == second, isFalse,
        reason: 'a new random key is generated on every call');
  });

  test('unsupported characters throw instead of being replaced', () {
    expect(
      () => TextEncryption.textEncryption('Hello, World'),
      throwsA(isA<ArgumentError>()),
    );
    expect(
      () => TextEncryption.textEncryption('line\nbreak'),
      throwsA(isA<ArgumentError>()),
    );
  });
}
