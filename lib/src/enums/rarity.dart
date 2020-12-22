import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Rarity {
  unknown,
  r1,
  r2,
  r3,
  r4,
  r5,
  r6,
  r7,
  r8,
  r9,
  r10,
  r11,
  r12,
}

const _rarityColorMap = <Rarity, Color>{
  Rarity.unknown: Color(0xFFFFFFFF),
  Rarity.r1: Color(0xFFC2BFBF),
  Rarity.r2: Color(0xFFF3F3F3),
  Rarity.r3: Color(0xFFA9B978),
  Rarity.r4: Color(0xFF6AAC85),
  Rarity.r5: Color(0xFF418189),
  Rarity.r6: Color(0xFF88349B),
  Rarity.r7: Color(0xFF9D93E7),
  Rarity.r8: Color(0xFFB58377),
  Rarity.r9: Color(0xFF9A3548),
  Rarity.r10: Color(0xFF5E8EFC),
  Rarity.r11: Color(0xFFEFCD1E),
  Rarity.r12: Color(0xFF55D1F0),
};

extension RarityExtensions on Rarity {
  /// Converts the [Rarity] to a it's `integer` substring value that is stored in the database.
  String toSqlString() => describeEnum(this).substring(1);

  Color get rarityColor =>
      _rarityColorMap[this] ?? _rarityColorMap[Rarity.unknown]!;
}

final Map<String, Rarity> rarityMap = {
  for (final enumValue in Rarity.values) enumValue.toSqlString(): enumValue
};
