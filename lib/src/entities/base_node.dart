import 'package:equatable/equatable.dart';

class BaseNode extends Equatable {
  final int? parentId;
  final int? id;

  const BaseNode({
    this.parentId,
    this.id,
  });

  @override
  List<Object?> get props => [
        parentId,
        id,
      ];
}
