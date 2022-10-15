// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverRM _$DriverRMFromJson(Map<String, dynamic> json) => DriverRM(
      id: json['driverId'] as String,
      birthDate: DateTime.parse(json['dateOfBirth'] as String),
      nationality: json['nationality'] as String,
      firstName: json['givenName'] as String,
      lastName: json['familyName'] as String,
      code: json['code'] as String?,
      permanentNumber: json['permanentNumber'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DriverRMToJson(DriverRM instance) => <String, dynamic>{
      'driverId': instance.id,
      'dateOfBirth': instance.birthDate.toIso8601String(),
      'nationality': instance.nationality,
      'givenName': instance.firstName,
      'familyName': instance.lastName,
      'code': instance.code,
      'permanentNumber': instance.permanentNumber,
      'url': instance.url,
    };
