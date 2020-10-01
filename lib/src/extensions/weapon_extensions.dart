import 'package:mhw_darta/src/entities/weapon.dart';
import 'package:mhw_darta/src/utils/tree_node.dart';

extension WeaponListExtensions on List<Weapon> {
  List<Weapon> get roots {
    return where((e) => e.previousWeaponId == null).toList();
  }

  Map<int, TreeNode> get toTrees {
    return {
      for (var weapon in roots) weapon.id: TreeNode<Weapon>(node: weapon)
    };
  }
}

extension WeaponExtensions on Weapon {
  TreeNode toTreeNode() => TreeNode<Weapon>(node: this);
}
