extension Str on String {
  // capitalize first letter of a every word in a string
  String toTitleCase() {
    List<String> s = this.toLowerCase().split(' ');
    String result = '';
    s.forEach((e) {
      result += e.replaceRange(0, 1, e[0].toUpperCase());
      result += ' ';
    });
    return result.trim();
  }

  String get normalizeUrl {
    return this.replaceAll('//', '//');
  }

  /// check if a string is a link
  bool get isLink {
    return this.startsWith('http://') || this.startsWith('https://');
  }

  bool compareWith(String other) => this.toLowerCase() == other.toLowerCase();
}
