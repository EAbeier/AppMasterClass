import 'package:atividades_masterclass/Enums/enum_app_tab.dart';
import 'package:atividades_masterclass/store/tab_store.dart';
import 'package:atividades_masterclass/store/theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool canGoBack;
  const CustomAppBar({Key? key, this.title, this.canGoBack = false})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(90);
  @override
  Widget build(BuildContext context) {
    final _themeStore = Provider.of<ThemeStore>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          children: [
            canGoBack
                ? IconButton(
                    onPressed: Navigator.of(context).pop,
                    icon: const Icon(Icons.arrow_back_ios))
                : Image.asset('assets/images/logo/logo.png'),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<TabStore>(builder: (_, store, __) {
                    final EnumAppTab appTab = store.value;
                    return Text(
                      title ?? appTab.title,
                      style: Theme.of(context).textTheme.headline6,
                    );
                  }),
                  Text(
                    "Flutterando masterclass",
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: _themeStore.toggleTheme,
              child: _themeStore.isDark
                  ? SvgPicture.asset(
                      'assets/images/icons/awesome-moon.svg',
                      color: Theme.of(context).iconTheme.color,
                    )
                  : Icon(
                      Icons.light_mode,
                      color: Theme.of(context).iconTheme.color,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
