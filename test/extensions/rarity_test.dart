import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mhw_darta/src/enums/rarity.dart';

void main() {
  group('Rarity extensions:', () {
    test('Extensions return correct colors', () async {
      expect(Rarity.r1.rarityColor, equals(Color(0xFFC2BFBF)));

      expect(Rarity.r2.rarityColor, equals(Color(0xFFF3F3F3)));

      expect(Rarity.r3.rarityColor, equals(Color(0xFFA9B978)));

      expect(Rarity.r4.rarityColor, equals(Color(0xFF6AAC85)));

      expect(Rarity.r5.rarityColor, equals(Color(0xFF418189)));

      expect(Rarity.r6.rarityColor, equals(Color(0xFF58349b)));

      expect(Rarity.r7.rarityColor, equals(Color(0xFF9D93E7)));

      expect(Rarity.r8.rarityColor, equals(Color(0xFFB58377)));

      expect(Rarity.r9.rarityColor, equals(Color(0xFF9A3548)));

      expect(Rarity.r10.rarityColor, equals(Color(0xFF5E8EFC)));

      expect(Rarity.r11.rarityColor, equals(Color(0xFFEFCD1E)));

      expect(Rarity.r12.rarityColor, equals(Color(0xFF55D1F0)));
    });
  });
}
