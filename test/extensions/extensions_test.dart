import 'package:flutter_test/flutter_test.dart';
import 'package:mhw_darta/src/entities/monster.dart';
import 'package:mhw_darta/extensions.dart';
import 'package:mhw_darta/src/enums/element_type.dart';

void main() {
  final monsterList = [
    Monster(
      id: 1,
      orderId: 1,
      name: 'Monster1',
      weaknessFire: 2,
      weaknessIce: 1,
      weaknessThunder: 3,
      weaknessWater: 0,
      weaknessDragon: 2,
    ),
    Monster(
      id: 2,
      orderId: 2,
      name: 'Monster2',
      weaknessFire: 3,
      weaknessIce: 3,
      weaknessThunder: 0,
      weaknessWater: 0,
      weaknessDragon: 1,
    ),
    Monster(
      id: 3,
      orderId: 3,
      name: 'Monster3',
      weaknessFire: 2,
      weaknessIce: 0,
      weaknessThunder: 0,
      weaknessWater: 0,
      weaknessDragon: 2,
    ),
    Monster(
      id: 4,
      orderId: 4,
      name: 'Monster4',
      weaknessFire: 1,
      weaknessIce: 0,
      weaknessThunder: 0,
      weaknessWater: 0,
      weaknessDragon: 1,
    ),
  ];

  group('Monster extensions:', () {
    test('Top weaknesses returns correct list items', () async {
      final weaknesses1 = monsterList[0].topWeaknessList;
      final weaknesses2 = monsterList[1].topWeaknessList;
      final weaknesses3 = monsterList[2].topWeaknessList;
      final weaknesses4 = monsterList[3].topWeaknessList;
      expect(weaknesses1, equals(<ElementType>[ElementType.thunder]));
      expect(weaknesses1.length, equals(1));

      expect(
          weaknesses2,
          containsAll(<ElementType>[
            ElementType.fire,
            ElementType.ice,
          ]));
      expect(weaknesses2.length, equals(2));

      expect(
          weaknesses3,
          containsAll(<ElementType>[
            ElementType.fire,
            ElementType.dragon,
          ]));
      expect(weaknesses3.length, equals(2));

      expect(weaknesses4, equals(<ElementType>[]));
    });
  });
}
