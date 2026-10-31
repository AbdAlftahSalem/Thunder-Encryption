import './letters/symbol.dart';
import 'letters/ar_letters.dart';
import 'letters/en_letters.dart';
import 'letters/numbers.dart';

/// Builds the alphabet used for encryption and decryption from all the
/// supported languages (English, Arabic, digits and symbols).
class LettersInit {
  // create singleton for ConstStrings
  static final LettersInit instance = LettersInit._internal();

  factory LettersInit() => instance;

  LettersInit._internal();

  /// Letter for each value, used when decrypting.
  Map<int, String> lettersWithIntKey = {};

  /// Value for each letter, used when encrypting.
  Map<String, int> lettersWithStringKey = {};

  /// Number of letters in the alphabet.
  int length = 0;

  /// The supported symbols, joined into one string (for error messages).
  String get supportedSymbols =>
      Symbols.instance.symbolsWithStringKey.keys.join();

  /// Fills the alphabet. Safe to call more than once.
  void setupLetters() {
    // Setup EN letters
    lettersWithIntKey.addAll(EnLetters.instance.enSmallLettersIntKey);
    lettersWithIntKey.addAll(EnLetters.instance.enCapitalLettersIntKey);
    lettersWithStringKey.addAll(EnLetters.instance.enSmallLettersStringKey);
    lettersWithStringKey.addAll(EnLetters.instance.enCapitalLettersStringKey);

    // Setup Symbols
    lettersWithStringKey.addAll(Symbols.instance.symbolsWithStringKey);
    lettersWithIntKey.addAll(Symbols.instance.symbolsWithIntKey);

    // Setup AR letters
    lettersWithStringKey.addAll(ArLetters.instance.arLettersStringKey);
    lettersWithIntKey.addAll(ArLetters.instance.arLettersIntKey);

    // Add nu,bers
    lettersWithStringKey.addAll(Numbers.instance.symbolsWithStringKey);
    lettersWithIntKey.addAll(Numbers.instance.symbolsWithIntKey);

    length = lettersWithStringKey.length;
  }
}
