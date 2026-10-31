import './letters_key_model.dart';

/// A generated key: its numeric value and the letters that hide it in the
/// cipher text.
class KeyModel {
  /// Numeric value of the key.
  int key;

  /// The six letters (and their values) the key is built from.
  LettersKeyModel letters;

  /// Creates a key model.
  KeyModel({required this.key, required this.letters});

  @override
  String toString() {
    return 'KeyModel{key: $key, letters: $letters}';
  }
}
