enum EnumIcons {
  android,
  apple,
  facebook,
  gitHubAlt,
  github,
  glasses,
  instagram,
  moon,
  running,
  conversation,
  csharp,
  dart,
  dotNet,
  facebookPng,
  target,
  flutter,
  whats,
  toys,
  pesquisa,
  tinder,
}

extension EnumGetter on EnumIcons {
  String get uri {
    switch (this) {
      case EnumIcons.android:
        return "assets/images/icons/android.svg";
      case EnumIcons.apple:
        return "assets/images/icons/apple.png";
      case EnumIcons.conversation:
        return "assets/images/icons/conversation.png";
      case EnumIcons.csharp:
        return "assets/images/icons/csharp.svg";
      case EnumIcons.dart:
        return "assets/images/icons/dart.svg";
      case EnumIcons.dotNet:
        return "assets/images/icons/dotnet.svg";
      case EnumIcons.facebook:
        return "assets/images/icons/awesome-facebook-f.svg";
      case EnumIcons.facebookPng:
        return "assets/images/icons/facebook.png";
      case EnumIcons.flutter:
        return "assets/images/icons/flutter.svg";
      case EnumIcons.gitHubAlt:
        return "assets/images/icons/awesome-github-alt.svg";
      case EnumIcons.github:
        return "assets/images/icons/awesome-github.svg";
      case EnumIcons.glasses:
        return "assets/images/icons/awesome-glasses.svg";
      case EnumIcons.instagram:
        return "assets/images/icons/awesome-instagram.svg";
      case EnumIcons.moon:
        return "assets/images/icons/awesome-moon.svg";
      case EnumIcons.pesquisa:
        return "assets/images/icons/pesquisa.png";
      case EnumIcons.running:
        return "assets/images/icons/awesome-running.svg";
      case EnumIcons.target:
        return "assets/images/icons/feather-target.svg";
      case EnumIcons.tinder:
        return "assets/images/icons/tinder.png";
      case EnumIcons.toys:
        return "assets/images/icons/material-toys.svg";
      case EnumIcons.whats:
        return "assets/images/icons/ionic-logo-whatsapp.svg";
    }
  }
}
