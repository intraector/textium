import '../../settings/dto/app_module.dart';
import '../../settings/dto/locale_name.dart';

abstract class AppDefaults {
  static const bool isProduction = false;
  static const LocaleName locale = LocaleName.ru;
  static const AppModule module = AppModule.copier;
}
