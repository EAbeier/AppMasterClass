enum EnumAppTab { home, repository, dev }

extension EnumGetter on EnumAppTab {
  String get title {
    switch (this) {
      case EnumAppTab.home:
        return "Atividades";
      case EnumAppTab.repository:
        return "Repositório";
      case EnumAppTab.dev:
        return "Sobre o dev";
    }
  }
}
