import 'package:flutter/foundation.dart';

enum EldersealType {
  none,
  low,
  average,
  high,
}

extension EldersealExtensions on EldersealType {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, EldersealType> eldersealTypeMap = {
  for (var enumValue in EldersealType.values) enumValue.toSqlString(): enumValue
};
