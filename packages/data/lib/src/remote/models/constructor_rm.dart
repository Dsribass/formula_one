import 'package:json_annotation/json_annotation.dart';

part 'constructor_rm.g.dart';

@JsonSerializable()
class ConstructorRM {
  ConstructorRM({
    required this.id,
    required this.name,
    required this.nationality,
    required this.url,
  });

  @JsonKey(name: 'constructorId')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'nationality')
  final String nationality;
  @JsonKey(name: 'url')
  final String url;

  factory ConstructorRM.fromJson(Map<String, dynamic> json) =>
      _$ConstructorRMFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorRMToJson(this);
}
