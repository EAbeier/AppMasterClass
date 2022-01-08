import 'package:atividades_masterclass/Pages/animations/animations/animated_container.dart';
import 'package:atividades_masterclass/Pages/animations/animations/expansion_tile_main_page.dart';
import 'package:atividades_masterclass/Pages/animations/controlled_animations/controlled_anim_container_page.dart';
import 'package:atividades_masterclass/Pages/animations/controlled_animations/controlled_expansion_tile_main.dart';
import 'package:atividades_masterclass/Pages/excercises_page.dart';
import 'package:atividades_masterclass/Pages/index_page.dart';
import 'package:atividades_masterclass/Pages/mockups/atividade1/mockup_app_financeiro_page.dart';
import 'package:atividades_masterclass/Pages/mockups/atividade2/mockup_tinder_page.dart';
import 'package:atividades_masterclass/Pages/splash_Screen.dart';
import 'package:atividades_masterclass/pages/parquinho/imc/imc_page.dart';
import 'package:atividades_masterclass/routes/routes.dart';
import 'package:atividades_masterclass/store/tab_store.dart';
import 'package:atividades_masterclass/store/theme_store.dart';
import 'package:atividades_masterclass/utils/enums/enum_theme.dart';
import 'package:atividades_masterclass/utils/themes/darktheme.dart';
import 'package:atividades_masterclass/utils/themes/lighttheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeStore>(create: (_) => ThemeStore()),
        ChangeNotifierProvider<TabStore>(create: (_) => TabStore()),
      ],
      child: Consumer<ThemeStore>(builder: (_, store, __) {
        return MaterialApp(
          theme: lighttheme,
          darkTheme: darkTheme,
          themeMode:
              store.value == EnumTheme.dark ? ThemeMode.dark : ThemeMode.light,
          initialRoute: SPLASH,
          routes: {
            SPLASH: (_) => const SplashScreen(),
            HOME: (_) => const MainPage(),
            EXERCISES: (_) => const ExercisesPage(),
            ANIMATEDCONTAINER: (_) => const AnimatedContainerExercise(),
            CONTROLLEDCONTAINER: (_) => const ControlledContainer(),
            EXPANSIONTILE: (_) => const CustomExpansionTileMain(),
            CONTROLLEDEXPANSIONTILE: (_) =>
                const ControlledExapansionTileMain(),
            MOCKUPAPPFINANCEIRO: (_) => const MockupAppFinanceiro(),
            MOCKUPTINDER: (_) => const MockupTinder(),
            IMC: (_) => const CalculadoraImc()
          },
        );
      }),
    );
  }
}
