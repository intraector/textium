import '../../l10n/generated/l10n.dart';

enum LocaleName {
  ru,
  kk;

  static LocaleName? fromCode(String? code) {
    if (code == ru.name) return ru;
    if (code == kk.name) return kk;
    return null;
  }

  String get code => name;
  String get localizedName {
    return switch (this) {
      ru => S.current.russian,
      kk => S.current.kazakh,
    };
  }
}
