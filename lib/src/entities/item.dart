import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:mhw_darta/src/enums/item_category.dart';
import 'package:mhw_darta/src/enums/rarity.dart';

class Item extends Equatable {
  final int id;
  final ItemCategory itemCategory;
  final String? name;
  final Rarity rarity;
  final int? buyPrice;
  final int? sellPrice;
  final int? carryLimit;
  final int? points;
  final String? iconName;
  final Color? iconColor;

  const Item({
    required this.id,
    this.itemCategory = ItemCategory.item,
    this.name,
    this.rarity = Rarity.r1,
    this.buyPrice,
    this.sellPrice,
    this.carryLimit,
    this.points,
    this.iconName,
    this.iconColor,
  });

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        id,
        itemCategory,
        name,
        rarity,
        buyPrice,
        sellPrice,
        carryLimit,
        points,
        iconName,
        iconColor,
      ];
}
