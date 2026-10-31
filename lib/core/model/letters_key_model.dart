/// The six random letters a key is built from, with their numeric values.
///
/// `n1`…`n6` are the values and `l1`…`l6` the matching letters.
class LettersKeyModel {
  /// Numeric values of the six key letters.
  int n1, n2, n3, n4, n5, n6;

  /// The six key letters, hidden inside the cipher text.
  String l1, l2, l3, l4, l5, l6;

  /// Creates a letters key model.
  LettersKeyModel({
    required this.n1,
    required this.n2,
    required this.n3,
    required this.n4,
    required this.n5,
    required this.n6,
    required this.l1,
    required this.l2,
    required this.l3,
    required this.l4,
    required this.l5,
    required this.l6,
  });

  @override
  String toString() {
    return 'LettersKeyModel{n1: $n1, n2: $n2, n3: $n3, n4: $n4, n5: $n5, n6: $n6, l1: $l1, l2: $l2, l3: $l3, l4: $l4, l5: $l5, l6: $l6}\nThe Full Key : $l1 $l2 $l3 $l4 $l5 $l6';
  }
}
