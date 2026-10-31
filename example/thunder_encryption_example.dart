import 'package:thunder_encryption/thunder_encryption.dart';

void main() {
  // Test normal String [ EN ]
  String plainEnString = "Abd Alftah Nedal AlShanti";
  String cipherEnString = TextEncryption.textEncryption(plainEnString);
  String encipherEnString = TextDecryption.textDecryption(cipherEnString);

  // Test symbols
  String plainSymbolString = "(=++*/\$@!*)";
  String cipherSymbolString = TextEncryption.textEncryption(plainSymbolString);
  String encipherSymbolString =
      TextDecryption.textDecryption(cipherSymbolString);

  // Test normal String [ AR ]
  String plainArString = "عبد الفتاح نضال الشنطي";
  String cipherArString = TextEncryption.textEncryption(plainArString);
  String encipherArString = TextDecryption.textDecryption(cipherArString);

  // Test numbers [ Numbers ]
  String numberPlainString = "1245451";
  String numberCipherString = TextEncryption.textEncryption(numberPlainString);
  String numberEncipherString =
      TextDecryption.textDecryption(numberCipherString);

  print("\n${"*" * 25}  Test EN String  ${"*" * 25}");
  print("Plain EN Text     : $plainEnString");
  print("Cipher EN Text    : $cipherEnString");
  print("Encipher EN Text  : $encipherEnString");

  print("\n${"*" * 25}  Test Symbols String  ${"*" * 25}");
  print("Plain Symbol Text     : $plainSymbolString");
  print("Cipher Symbol Text    : $cipherSymbolString");
  print("Encipher Symbol Text  : $encipherSymbolString");

  print("\n${"*" * 25}  Test AR String  ${"*" * 25}");
  print("Plain AR Text     : $plainArString");
  print("Cipher AR Text    : $cipherArString");
  print("Encipher AR Text  : $encipherArString");

  print("\n${"*" * 25}  Test Numbers  ${"*" * 25}");
  print("Plain Number Text     : $numberPlainString");
  print("Cipher Number Text    : $numberCipherString");
  print("Encipher Number Text  : $numberEncipherString");

  // Characters outside the supported alphabet are rejected instead of being
  // silently changed.
  try {
    TextEncryption.textEncryption("Hello, World");
  } on ArgumentError catch (e) {
    print("\nUnsupported character: ${e.message}");
  }
}
