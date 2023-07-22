class Validators {
  static requiredField(String text, {String? errorMessage}) =>
      text.isEmpty ? errorMessage ?? "Kolom tidak boleh kosong" : null;
}
