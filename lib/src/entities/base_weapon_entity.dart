import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:mhw_darta/src/enums/category_type.dart';
import 'package:mhw_darta/src/enums/elderseal_type.dart';
import 'package:mhw_darta/src/enums/element_type.dart';
import 'package:mhw_darta/src/enums/weapon_type.dart';

class BaseWeaponEntity extends Equatable {
  final int weaponId;
  final int orderId;
  final WeaponType weaponType;
  final int rarity;
  final CategoryType category;
  final int previousWeaponId;
  final int createRecipeId;
  final int upgradeRecipeId;
  final int attack;
  final int attackTrue;
  final int affinity;
  final int defense;
  final int slot1;
  final int slot2;
  final int slot3;
  final ElementType element;
  final int element1Attack;
  final ElementType element2;
  final int element2Attack;
  final bool elementHidden;
  final EldersealType elderseal;

  const BaseWeaponEntity({
    @required this.weaponId,
    @required this.orderId,
    @required this.weaponType,
    @required this.rarity,
    this.category = CategoryType.none,
    this.previousWeaponId,
    this.createRecipeId,
    this.upgradeRecipeId,
    @required this.attack,
    @required this.attackTrue,
    @required this.affinity,
    @required this.defense,
    @required this.slot1,
    @required this.slot2,
    @required this.slot3,
    this.element = ElementType.none,
    this.element1Attack,
    this.element2,
    this.element2Attack,
    this.elementHidden,
    this.elderseal = EldersealType.none,
  });

  @override
  List<Object> get props => [
        weaponId,
        orderId,
        weaponType,
        rarity,
        category,
        attack,
        attackTrue,
        affinity,
        defense,
        slot1,
        slot2,
        slot3,
        element,
        element1Attack,
        element2,
        element2Attack,
        elementHidden,
        elderseal,
      ];

  @override
  bool get stringify => true;
}
