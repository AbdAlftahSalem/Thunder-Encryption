<img src="https://raw.githubusercontent.com/AbdAlftahSalem/Thunder-Encryption/main/assets/images/logo.png" width="300"/>

# Thunder Encryption

[![pub package](https://img.shields.io/pub/v/thunder_encryption.svg)](https://pub.dev/packages/thunder_encryption)
[![CI](https://github.com/AbdAlftahSalem/Thunder-Encryption/actions/workflows/ci.yml/badge.svg)](https://github.com/AbdAlftahSalem/Thunder-Encryption/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Convert readable (plain) text into unreadable (cipher) text and back again, in pure Dart. Works in Dart and Flutter on every platform, including web.

- English and Arabic letters, digits, the space and common symbols.
- A new random key on every call, hidden inside the cipher text, so the same text gives a different cipher each time and there is no key to store.
- No dependencies.

## Installation

```bash
dart pub add thunder_encryption
```

or, in a Flutter project:

```bash
flutter pub add thunder_encryption
```

## Usage

```dart
import 'package:thunder_encryption/thunder_encryption.dart';

void main() {
  // English
  String plainEnString = "Abd Alftah Nedal AlShanti";
  String cipherEnString = TextEncryption.textEncryption(plainEnString);
  String decryptedEnString = TextDecryption.textDecryption(cipherEnString);

  // Arabic
  String plainArString = "عبد الفتاح نضال الشنطي";
  String cipherArString = TextEncryption.textEncryption(plainArString);
  String decryptedArString = TextDecryption.textDecryption(cipherArString);

  // Symbols and numbers
  String cipherSymbols = TextEncryption.textEncryption("(=++*/\$@!*) 1245451");

  print("Cipher EN    : $cipherEnString");
  print("Decrypted EN : $decryptedEnString");
  print("Cipher AR    : $cipherArString");
  print("Decrypted AR : $decryptedArString");
  print("Decrypted    : ${TextDecryption.textDecryption(cipherSymbols)}");
}
```

A full runnable example is in [`example/thunder_encryption_example.dart`](example/thunder_encryption_example.dart).

### Supported characters

| Group   | Characters |
|---------|------------|
| English | `a`–`z`, `A`–`Z` |
| Arabic  | the Arabic letters |
| Digits  | `0`–`9` |
| Symbols | space and `/ * - + ! @ # $ % ^ & ( ) _ = \ > < } { : ; ' "` |

Any other character (for example `,`, `.`, a line break or an emoji) throws an `ArgumentError` that names it, instead of being changed silently.

> **Note:** Thunder Encryption is a lightweight way to make text unreadable at a glance. It is not a replacement for audited cryptography (AES, for example) when you protect passwords, tokens or other sensitive data.

## Contributing

Feel free to contribute to this project by opening issues, suggesting new features, or submitting pull requests, or add
new languages.

### Add Languages:

1. Go to `lib/core/strings/letters`.
2. Create a new file for the new language, e.g. `en_letters.dart` / `ar_letters.dart`.
3. Create a `Map<String, int>` (letter → value) used for encryption and a `Map<int, String>` (value → letter) used for decryption:

```dart
class EnLetters {
  // create singleton for ConstStrings
  static final EnLetters instance = EnLetters._internal();

  factory EnLetters() => instance;

  EnLetters._internal();

  Map<String, int> enSmallLettersStringKey = {
    "a": 0,
    "b": 1,
  };

  Map<int, String> enSmallLettersIntKey = {
    0: "a",
    1: "b",
  };
}
```

4. Go to `lib/core/strings/letters_init.dart` and add the new language in the `setupLetters` method.

> Adding letters changes the alphabet size, so text encrypted with an older alphabet will not decrypt with the new one. Treat it as a breaking change (new major version).

Run the checks before opening a pull request:

```bash
dart format .
dart analyze
dart test
```

## License

This project is licensed under the [MIT License](LICENSE).
