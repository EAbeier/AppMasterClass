import 'package:atividades_masterclass/utils/enums/enum_theme.dart';
import 'package:flutter/widgets.dart';

class ThemeStore extends ValueNotifier<EnumTheme> {
  ThemeStore() : super(EnumTheme.dark);

  void toggleTheme() {
    value = isDark ? EnumTheme.light : EnumTheme.dark;
  }

  bool get isDark {
    return value == EnumTheme.dark;
  }
}
