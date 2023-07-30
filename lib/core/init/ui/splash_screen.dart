import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../_shared/utils/navigator/navigator1_helper.dart';
import '../../theme/repo/theme_repo.dart';
import '../../theme/themes/_interface/app_theme.dart';
import '../core_di.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      CoreDi.get<ThemeRepo>().theme.value.data.appBarTheme.systemOverlayStyle!,
    );
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.router.use.pushRootScreen(withAnimation: true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: context.theme.color.accent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Material(
        child: ColoredBox(
          color: context.theme.color.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: const FlutterLogo(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
