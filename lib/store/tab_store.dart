import 'package:atividades_masterclass/utils/enums/enum_app_tab.dart';
import 'package:flutter/widgets.dart';

class TabStore extends ValueNotifier<EnumAppTab> {
  TabStore() : super(EnumAppTab.home);

  void changeTab(EnumAppTab value) {
    this.value = value;
  }
}
