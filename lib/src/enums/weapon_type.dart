import 'package:flutter/foundation.dart';

enum WeaponType {
  bow,
  greatSword,
  longSword,
  swordAndShield,
  dualBlades,
  hammer,
  huntingHorn,
  insectGlaive,
  gunlance,
  lance,
  lightBowgun,
  heavyBowgun,
  switchAxe,
  chargeBlade,
  unknown,
}

extension WeaponTypeExtension on WeaponType {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, WeaponType> weaponTypeMap = {
  for (final enumValue in WeaponType.values) enumValue.toSqlString(): enumValue
};
