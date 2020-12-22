import 'package:flutter/foundation.dart';

enum SpecialAmmoType {
  none,
  wyvernsnipe,
  wyvernheart,
  wyvernblast,
}

extension SpecialAmmoExtensions on SpecialAmmoType {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, SpecialAmmoType> specialAmmoMap = {
  for (final enumValue in SpecialAmmoType.values)
    enumValue.toSqlString(): enumValue
};
