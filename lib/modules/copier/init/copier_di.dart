import 'package:get_it/get_it.dart';

import '../projects/data/repo/projects_repo.dart';

class CopierDi {
  static GetIt get = GetIt.asNewInstance();

  static void register() {
    get.registerLazySingleton<ProjectsRepo>(ProjectsRepo.new);
  }
}
