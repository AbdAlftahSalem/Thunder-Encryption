## 1.1.0

- **Fix:** characters outside the supported alphabet (for example `,`, line breaks or accented letters) were silently encrypted as `a`, so decryption did not return the original text. `TextEncryption.textEncryption` now throws an `ArgumentError` naming the character instead.
- New main library `package:thunder_encryption/thunder_encryption.dart`. `package:thunder_encryption/encryption.dart` still works.
- The demo `main()` no longer ships inside `lib/` or gets exported; it lives in `example/thunder_encryption_example.dart`.
- Removed the Flutter app scaffolding (android, ios, web, windows, macos, linux) that was shipped inside the package; this is a pure Dart package.
- Real unit tests (round trip for English, Arabic, digits, symbols and 300 random strings).
- Dartdoc comments for the public API, analyzer clean, `lints` ^6.0.0.
- Fixed the pubspec description and repository link, added topics and issue tracker.
- LICENSE now names the right copyright holder.
- GitHub Actions CI (format, analyze, test).

## 1.0.0

- Initial version.
