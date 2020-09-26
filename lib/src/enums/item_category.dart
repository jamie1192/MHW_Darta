import 'package:flutter/foundation.dart';

enum ItemCategory { item, material, unknown }

extension ItemCategoryExtensions on ItemCategory {
  String toSqlString() => describeEnum(this).toLowerCase();
}

final Map<String, ItemCategory> itemCategoryMap = {
  for (final enumValue in ItemCategory.values)
    enumValue.toSqlString(): enumValue
};
