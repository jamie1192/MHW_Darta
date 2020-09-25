import 'package:flutter/foundation.dart';

enum Languages {
  en,
  // TODO: languages
}

extension LanguagesExtension on Languages {
  String toSqlString() => describeEnum(this);
}

final Map<String, Languages> languagesTypeMap = {
  for (final lang in Languages.values) describeEnum(lang).toLowerCase(): lang
};
