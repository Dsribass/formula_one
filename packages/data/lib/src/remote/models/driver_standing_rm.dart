import 'package:json_annotation/json_annotation.dart';

import 'constructor_rm.dart';
import 'driver_rm.dart';

part 'driver_standing_rm.g.dart';

@JsonSerializable()
class DriverStandingRM {
  const DriverStandingRM({
    required this.points,
    required this.position,
    required this.wins,
    required this.driver,
    required this.constructors,
  });

  @JsonKey(name: 'Driver')
  final DriverRM driver;
  @JsonKey(name: 'Constructors')
  final List<ConstructorRM> constructors;
  @JsonKey(name: 'points')
  final double points;
  @JsonKey(name: 'position')
  final int position;
  @JsonKey(name: 'wins')
  final int wins;

  factory DriverStandingRM.fromJson(Map<String, dynamic> json) =>
      _$DriverStandingRMFromJson(json);

  Map<String, dynamic> toJson() => _$DriverStandingRMToJson(this);
}
