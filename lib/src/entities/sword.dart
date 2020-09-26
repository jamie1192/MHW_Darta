import 'package:flutter/foundation.dart';
import 'package:mhw_darta/src/entities/base_weapon_entity.dart';
import 'package:mhw_darta/src/enums/category_type.dart';
import 'package:mhw_darta/src/enums/elderseal_type.dart';
import 'package:mhw_darta/src/enums/element_type.dart';
import 'package:mhw_darta/src/enums/weapon_type.dart';

class Sword extends BaseWeaponEntity {
  final List<int> sharpness;
  final bool isSharpnessMaxxed;

  const Sword({
    @required this.sharpness,
    @required this.isSharpnessMaxxed,
    int weaponId,
    int orderId,
    WeaponType weaponType = WeaponType.unknown,
    int rarity,
    CategoryType category = CategoryType.none,
    int previousWeaponId,
    int createRecipeId,
    int upgradeRecipeId,
    int attack,
    int attackTrue,
    int affinity,
    int defense,
    int slot1,
    int slot2,
    int slot3,
    ElementType element = ElementType.none,
    int element1Attack,
    ElementType element2 = ElementType.none,
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
        sharpness,
        isSharpnessMaxxed,
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
