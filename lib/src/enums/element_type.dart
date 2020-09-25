import 'package:flutter/foundation.dart';

enum ElementType {
  none,
  water,
  ice,
  fire,
  thunder,
  poison,
  paralysis,
  blast,
  dragon,
  sleep
}

extension ElementTypeExtension on ElementType {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, ElementType> elementTypeMap = {
  for (var enumValue in ElementType.values) enumValue.toSqlString(): enumValue
};
