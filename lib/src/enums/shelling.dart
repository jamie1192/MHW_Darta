import 'package:flutter/foundation.dart';

enum Shelling {
  normal,
  long,
  wide,
}

extension ShellingExtensions on Shelling {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, Shelling> shellingMap = {
  for (final enumValue in Shelling.values) enumValue.toSqlString(): enumValue
};
