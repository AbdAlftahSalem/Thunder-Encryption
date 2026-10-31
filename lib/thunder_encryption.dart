/// Thunder Encryption: turn readable text (plain text) into unreadable text
/// (cipher text) and back again.
///
/// ```dart
/// import 'package:thunder_encryption/thunder_encryption.dart';
///
/// final cipher = TextEncryption.textEncryption('Hello Thunder');
/// final plain = TextDecryption.textDecryption(cipher); // 'Hello Thunder'
/// ```
///
/// Every call to [TextEncryption.textEncryption] generates a new random key
/// and hides it inside the cipher text, so the same input gives a different
/// cipher each time and no key has to be stored or shared separately.
library;

export 'core/strings/letters/en_letters.dart';
export 'core/model/key_model.dart';
export 'core/model/letters_key_model.dart';
export 'feature/key_generation/extract_key.dart';
export 'feature/key_generation/generate_key.dart';
export 'feature/text_encryption_decryption/text_decryption.dart';
export 'feature/text_encryption_decryption/text_encryption.dart';
