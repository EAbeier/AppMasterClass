enum EnumLogos { masterLogo, logo, logo2x }

extension EnumGetter on EnumLogos {
  String get uri {
    switch (this) {
      case EnumLogos.masterLogo:
        return "assets/images/logo/masterclass_logo.png";
      case EnumLogos.logo:
        return "assets/images/logo/logo.png";
      case EnumLogos.logo2x:
        return "assets/images/logo/masterclass_logo_2x.png";
    }
  }
}
