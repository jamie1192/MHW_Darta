import 'package:flutter/foundation.dart';

enum Phial {
  dragon,
  exhaust,
  impact,
  paralysis,
  poison,
  power,
}

extension PhialExtensions on Phial {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, Phial> phialMap = {
  for (final enumValue in Phial.values) enumValue.toSqlString(): enumValue
};
