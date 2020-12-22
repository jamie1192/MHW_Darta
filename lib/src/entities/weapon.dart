import 'package:mhw_darta/src/entities/base_node.dart';

import 'package:mhw_darta/src/enums/category_type.dart';
import 'package:mhw_darta/src/enums/elderseal_type.dart';
import 'package:mhw_darta/src/enums/element_type.dart';
import 'package:mhw_darta/src/enums/phial.dart';
import 'package:mhw_darta/src/enums/rarity.dart';
import 'package:mhw_darta/src/enums/shelling.dart';
import 'package:mhw_darta/src/enums/weapon_type.dart';

class Weapon extends BaseNode {
  // final int id;
  final String name;
  final int orderId;
  final WeaponType weaponType;
  final Rarity rarity;
  final CategoryType category;
  // final int previousWeaponId;
  final int? createRecipeId;
  final int? upgradeRecipeId;
  final int attack;
  final int attackTrue;
  final int affinity;
  final int defense;
  final int slot1;
  final int slot2;
  final int slot3;
  final ElementType element;
  final int? element1Attack;
  final ElementType element2;
  final int? element2Attack;
  final bool elementHidden;
  final EldersealType elderseal;
  // sword-types
  final List<int> sharpness;
  final bool isSharpnessMaxxed;
  final bool isCraftable;
  final bool isFinal;
  // Insect Glaive
  final String? kinsectBonus;
  // Charge Blade, Gunlance
  final Phial phial;
  final int? phialPower;
  final Shelling shelling;
  final int? shellingLevel;

  final String notes;
  // bows
  final int? coatingClose;
  final int? coatingPower;
  final int? coatingParalysis;
  final int? coatingPoison;
  final int? coatingSleep;
  final int? coatingBlast;
  final int? armorsetBonusId;

  /// FK to the `weapon_ammo` table.
  final int? ammoId;

  const Weapon({
    required int id,
    int? parentId,
    // @required this.id,
    required this.name,
    required this.orderId,
    required this.weaponType,
    required this.rarity,
    this.category = CategoryType.none,
    // this.previousWeaponId,
    this.createRecipeId,
    this.upgradeRecipeId,
    required this.attack,
    required this.attackTrue,
    required this.affinity,
    required this.defense,
    required this.slot1,
    required this.slot2,
    required this.slot3,
    this.element = ElementType.none,
    this.element1Attack,
    this.element2 = ElementType.none,
    this.element2Attack,
    this.elementHidden = false,
    this.elderseal = EldersealType.none,
    this.sharpness = const <int>[],
    this.isSharpnessMaxxed = false,
    this.ammoId,
    this.isCraftable = false,
    this.isFinal = false,
    this.kinsectBonus,
    this.phial = Phial.none,
    this.phialPower,
    this.shelling = Shelling.none,
    this.shellingLevel,
    this.notes = '',
    this.coatingClose,
    this.coatingPower,
    this.coatingParalysis,
    this.coatingPoison,
    this.coatingSleep,
    this.coatingBlast,
    this.armorsetBonusId,
  }) : super(id: id, parentId: parentId);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      super.id,
      super.parentId,
      name,
      orderId,
      weaponType,
      rarity,
      category,
      createRecipeId,
      upgradeRecipeId,
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
      sharpness,
      isSharpnessMaxxed,
      isCraftable,
      isFinal,
      kinsectBonus,
      phial,
      phialPower,
      shelling,
      shellingLevel,
      notes,
      coatingClose,
      coatingPower,
      coatingParalysis,
      coatingPoison,
      coatingSleep,
      coatingBlast,
      armorsetBonusId,
      ammoId,
    ];
  }
}
