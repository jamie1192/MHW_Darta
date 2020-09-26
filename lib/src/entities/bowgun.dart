import 'package:flutter/foundation.dart';
import 'package:mhw_darta/src/enums/elderseal_type.dart';
import 'package:mhw_darta/src/enums/element_type.dart';
import 'package:mhw_darta/src/enums/weapon_type.dart';

import 'base_weapon_entity.dart';

/// Base class for Heavy and Light Bowguns
class Bowgun extends BaseWeaponEntity {
  /// FK to the `weapon_ammo` table.
  final int ammoId;

  const Bowgun({
    @required this.ammoId,
    @required int weaponId,
    @required int orderId,
    @required WeaponType weaponType,
    @required int rarity,
    @required int attack,
    @required int attackTrue,
    @required int affinity,
    @required int defense,
    @required int slot1,
    @required int slot2,
    @required int slot3,
    ElementType element = ElementType.none,
    int element1Attack,
    ElementType element2,
    int element2Attack,
    bool elementHidden,
    EldersealType elderseal = EldersealType.none,
  }) : super(
          weaponId: weaponId,
          orderId: orderId,
          weaponType: weaponType,
          rarity: rarity,
          attack: attack,
          attackTrue: attackTrue,
          affinity: affinity,
          defense: defense,
          slot1: slot1,
          slot2: slot2,
          slot3: slot3,
          element: element,
          element1Attack: element1Attack,
          element2: element2,
          element2Attack: element2Attack,
          elementHidden: elementHidden,
          elderseal: elderseal,
        );

  @override
  List<Object> get props => [
        ammoId,
        super.weaponId,
        super.orderId,
        super.weaponType,
        super.rarity,
        super.category,
        super.attack,
        super.attackTrue,
        super.affinity,
        super.defense,
        super.slot1,
        super.slot2,
        super.slot3,
        super.element,
        super.element1Attack,
        super.element2,
        super.element2Attack,
        super.elementHidden,
        super.elderseal,
      ];

  @override
  bool get stringify => true;
}
