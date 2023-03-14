extension StringExtension on String {
  String get capitalize {
    if (length > 0) {
      return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
    } else {
      return '';
    }
  }

  String get capitalizeAll => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((value) => value.capitalize)
      .join(' ');
}
