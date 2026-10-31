/// Digits (0–9) and their numeric values.
class Numbers {
  /// The shared instance.
  static final Numbers instance = Numbers._internal();

  /// Returns the shared [instance].
  factory Numbers() => instance;

  Numbers._internal();

  /// Value for each digit.
  Map<String, int> symbolsWithStringKey = {
    "0": 112,
    "1": 113,
    "2": 114,
    "3": 115,
    "4": 116,
    "5": 117,
    "6": 118,
    "7": 119,
    "8": 120,
    "9": 121,
  };

  /// Digit for each value.
  Map<int, String> symbolsWithIntKey = {
    112: "0",
    113: "1",
    114: "2",
    115: "3",
    116: "4",
    117: "5",
    118: "6",
    119: "7",
    120: "8",
    121: "9",
  };
}
