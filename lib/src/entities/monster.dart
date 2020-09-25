import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:mhw_darta/src/enums/monster_size.dart';

class BaseMonsterEntity extends Equatable {
  final int id;
  final int orderId;
  final String name;

  const BaseMonsterEntity({
    this.id,
    this.orderId,
    this.name,
  });

  @override
  List<Object> get props => [id, orderId, name];
}

class Monster extends BaseMonsterEntity {
  final MonsterSize size;
  final String icon;
  final bool isPitfallTrappable;
  final bool isShockTrappable;
  final bool isVineTrappable;
  final bool hasWeakness;
  final bool hasAltWeakness;
  // weaknesses
  final int weaknessFire;
  final int weaknessWater;
  final int weaknessIce;
  final int weaknessThunder;
  final int weaknessDragon;
  final int weaknessPoison;
  final int weaknessSleep;
  final int weaknessParalysis;
  final int weaknessBlast;
  final int weaknessStun;
  // alt weaknesses
  final int altWeaknessFire;
  final int altWeaknessWater;
  final int altWeaknessIce;
  final int altWeaknessThunder;
  final int altWeaknessDragon;
  final int altWeaknessPoison;
  final int altWeaknessSleep;
  final int altWeaknessParalysis;
  final int altWeaknessBlast;
  final int altWeaknessStun;
  // ailments
  final String ailmentRoar;
  final String ailmentWind;
  final String ailmentTremor;
  final String ailmentDefenseDown;
  final String ailmentFireblight;
  final String ailmentWaterblight;
  final String ailmentThunderblight;
  final String ailmentIceblight;
  final String ailmentDragonblight;
  final String ailmentBlastblight;
  final String ailmentRegional;
  final String ailmentPoison;
  final String ailmentSleep;
  final String ailmentParalysis;
  final String ailmentBleed;
  final String ailmentStun;
  final String ailmentMud;
  final String ailmentEffluvia;

  const Monster({
    @required int id,
    @required int orderId,
    @required String name,
    this.size,
    this.icon,
    this.isPitfallTrappable,
    this.isShockTrappable,
    this.isVineTrappable,
    this.hasWeakness,
    this.hasAltWeakness,
    this.weaknessFire,
    this.weaknessWater,
    this.weaknessIce,
    this.weaknessThunder,
    this.weaknessDragon,
    this.weaknessPoison,
    this.weaknessSleep,
    this.weaknessParalysis,
    this.weaknessBlast,
    this.weaknessStun,
    this.altWeaknessFire,
    this.altWeaknessWater,
    this.altWeaknessIce,
    this.altWeaknessThunder,
    this.altWeaknessDragon,
    this.altWeaknessPoison,
    this.altWeaknessSleep,
    this.altWeaknessParalysis,
    this.altWeaknessBlast,
    this.altWeaknessStun,
    this.ailmentRoar,
    this.ailmentWind,
    this.ailmentTremor,
    this.ailmentDefenseDown,
    this.ailmentFireblight,
    this.ailmentWaterblight,
    this.ailmentThunderblight,
    this.ailmentIceblight,
    this.ailmentDragonblight,
    this.ailmentBlastblight,
    this.ailmentRegional,
    this.ailmentPoison,
    this.ailmentSleep,
    this.ailmentParalysis,
    this.ailmentBleed,
    this.ailmentStun,
    this.ailmentMud,
    this.ailmentEffluvia,
  }) : super(
          id: id,
          orderId: orderId,
          name: name,
        );

  @override
  List<Object> get props => [
        super.id,
        super.orderId,
        super.name,
        size,
        icon,
        isPitfallTrappable,
        isShockTrappable,
        isVineTrappable,
        hasWeakness,
        hasAltWeakness,
        weaknessFire,
        weaknessWater,
        weaknessIce,
        weaknessThunder,
        weaknessDragon,
        weaknessPoison,
        weaknessSleep,
        weaknessParalysis,
        weaknessBlast,
        weaknessStun,
        altWeaknessFire,
        altWeaknessWater,
        altWeaknessIce,
        altWeaknessThunder,
        altWeaknessDragon,
        altWeaknessPoison,
        altWeaknessSleep,
        altWeaknessParalysis,
        altWeaknessBlast,
        altWeaknessStun,
        ailmentRoar,
        ailmentWind,
        ailmentTremor,
        ailmentDefenseDown,
        ailmentFireblight,
        ailmentWaterblight,
        ailmentThunderblight,
        ailmentIceblight,
        ailmentDragonblight,
        ailmentBlastblight,
        ailmentRegional,
        ailmentPoison,
        ailmentSleep,
        ailmentParalysis,
        ailmentBleed,
        ailmentStun,
        ailmentMud,
        ailmentEffluvia,
      ];
}
