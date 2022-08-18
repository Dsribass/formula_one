class Driver {
  Driver({
    required this.id,
    required this.birthDate,
    required this.nationality,
    required this.firstName,
    required this.lastName,
    required this.url,
    this.code,
    this.permanentNumber,
  });

  final String id;
  final DateTime birthDate;
  final String nationality;
  final String firstName;
  final String lastName;
  final String? code;
  final String? permanentNumber;
  final String url;
}
