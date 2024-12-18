class Chiste {
  final String inicio;
  final String gracia;

  const Chiste({required this.inicio, required this.gracia});

  factory Chiste.fromJson(Map<String, dynamic> json) {
    return Chiste(
        inicio: json['setup'] as String, gracia: json['punchline'] as String);
  }
}
