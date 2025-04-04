extension StringsX on String {
  String get onesCaps {
    return split(
      ' ',
    ).map((word) => word[0].toUpperCase() + word.substring(1)).join(' ');
  }
}
