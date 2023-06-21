extension CapitilizeString on String {
  String? capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String? deCapitalize() {
    return toLowerCase();
  }
}
