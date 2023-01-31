import 'package:json_annotation/json_annotation.dart';

import 'constructor_rm.dart';

part 'constructor_standing_rm.g.dart';

@JsonSerializable()
class ConstructorStandingRM {
  ConstructorStandingRM({
    required this.constructor,
    required this.points,
    required this.position,
    required this.wins,
  });

  @JsonKey(name: 'Constructor')
  final ConstructorRM constructor;
  @JsonKey(name: 'points')
  final String points;
  @JsonKey(name: 'position')
  final String position;
  @JsonKey(name: 'wins')
  final String wins;

  factory ConstructorStandingRM.fromJson(Map<String, dynamic> json) =>
      _$ConstructorStandingRMFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorStandingRMToJson(this);
}