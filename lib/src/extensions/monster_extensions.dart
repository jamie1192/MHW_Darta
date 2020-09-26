import 'package:mhw_darta/src/enums/element_type.dart';
import 'package:mhw_darta/src/entities/monster.dart';

extension MonsterExtensions on Monster {
  /// Returns a the 3 star weaknesses of [this].
  ///
  /// If [this] has none, then returns it's 2 star weaknesses.
  List<ElementType> get topWeaknessList {
    var temp = <ElementType>[];
    for (var i = 2; i >= 1; i--) {
      if (_isWeak(weaknessFire, i)) temp.add(ElementType.fire);
      if (_isWeak(weaknessIce, i)) temp.add(ElementType.ice);
      if (_isWeak(weaknessThunder, i)) temp.add(ElementType.thunder);
      if (_isWeak(weaknessWater, i)) temp.add(ElementType.water);
      if (_isWeak(weaknessDragon, i)) temp.add(ElementType.dragon);
      // Breaks at 3 star weaknesses. If monster has none, run again and get 2 star weaknesses.
      if (temp.isNotEmpty) break;
    }
    return temp;
  }

  bool _isWeak(int weaknessVal, int condition) =>
      weaknessVal != null && weaknessVal > condition;

  /// Convenience getter to return either the [Monster] icon asset,
  /// or fall back to the question mark icon.
  String get assetName => '${id}' ?? 'questionMark';
}
