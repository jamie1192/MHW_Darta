import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Rarity {
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

extension RarityExtensions on Rarity {
  /// Converts the [Rarity] to a it's `integer` substring value that is stored in the database.
  String toSqlString() => describeEnum(this).substring(1);

  Color get rarityColor {
    if (this == Rarity.r1) {
      return Color(0xFFC2BFBF);
    }
    if (this == Rarity.r2) {
      return Color(0xFFF3F3F3);
    }
    if (this == Rarity.r3) {
      return Color(0xFFA9B978);
    }
    if (this == Rarity.r4) {
      return Color(0xFF6AAC85);
    }
    if (this == Rarity.r5) {
      return Color(0xFF418189);
    }
    if (this == Rarity.r6) {
      return Color(0xFF58349b);
    }
    if (this == Rarity.r7) {
      return Color(0xFF9D93E7);
    }
    if (this == Rarity.r8) {
      return Color(0xFFB58377);
    }
    if (this == Rarity.r9) {
      return Color(0xFF9A3548);
    }
    if (this == Rarity.r10) {
      return Color(0xFF5E8EFC);
    }
    if (this == Rarity.r11) {
      return Color(0xFFEFCD1E);
    }
    if (this == Rarity.r12) {
      return Color(0xFF55D1F0);
    } else {
      return Color(0xFFFFFFFF);
    }
  }
}

final Map<String, Rarity> rarityMap = {
  for (final enumValue in Rarity.values) enumValue.toSqlString(): enumValue
};
