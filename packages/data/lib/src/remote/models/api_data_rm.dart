import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

abstract class ApiDataRM {
  const ApiDataRM({
    required this.limit,
    required this.offset,
    required this.total,
  });

  @JsonKey(name: 'limit', readValue: readLimitValue)
  final String limit;
  @JsonKey(name: 'offset', readValue: readOffsetValue)
  final String offset;
  @JsonKey(name: 'total', readValue: readTotalValue)
  final String total;

  @protected
  static Map<String, dynamic> getData(Map json) => json['MRData'];

  static Object? readLimitValue(Map json, String key) {
    return getData(json)[key];
  }

  static Object? readOffsetValue(Map json, String key) {
    return getData(json)[key];
  }

  static Object? readTotalValue(Map json, String key) {
    return getData(json)[key];
  }
}
