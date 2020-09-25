import 'package:flutter/foundation.dart';

enum MonsterSize { small, large, unknown }

extension MonsterSizeExtensions on MonsterSize {
  String toSqlString() => describeEnum(this);
}

final Map<String, MonsterSize> monsterSizeMap = {
  for (final enumValue in MonsterSize.values)
    describeEnum(enumValue).toLowerCase(): enumValue
};
