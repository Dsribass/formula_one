import 'package:json_annotation/json_annotation.dart';

part 'driver_rm.g.dart';

@JsonSerializable()
class DriverRM {
  DriverRM({
    required this.id,
    required this.birthDate,
    required this.nationality,
    required this.firstName,
    required this.lastName,
    required this.code,
    required this.permanentNumber,
    required this.url,
  });

  @JsonKey(name: 'driverId')
  final String id;
  @JsonKey(name: 'dateOfBirth')
  final DateTime birthDate;
  @JsonKey(name: 'nationality')
  final String nationality;
  @JsonKey(name: 'givenName')
  final String firstName;
  @JsonKey(name: 'familyName')
  final String lastName;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'permanentNumber')
  final String? permanentNumber;
  @JsonKey(name: 'url')
  final String url;

  factory DriverRM.fromJson(Map<String, dynamic> json) => _$DriverRMFromJson(json);
  Map<String, dynamic> toJson() => _$DriverRMToJson(this);
}
