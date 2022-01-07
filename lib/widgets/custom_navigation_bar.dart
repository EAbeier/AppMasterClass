import 'package:atividades_masterclass/Enums/enum_icons.dart';
import 'package:atividades_masterclass/store/tab_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:atividades_masterclass/Enums/enum_app_tab.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatefulWidget {
  final void Function(int) onTap;
  // ignore: use_key_in_widget_constructors
  const CustomNavigationBar({required this.onTap});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  void _onTap(int value) {
    widget.onTap(value);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _Item(
              onTap: () => _onTap(0),
              title: "Atividades",
              icon: EnumIcons.target.uri,
              value: EnumAppTab.home,
            ),
            Container(
              height: 46,
              width: 1,
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
            _Item(
              onTap: () => _onTap(1),
              title: "Repositório",
              icon: EnumIcons.github.uri,
              value: EnumAppTab.repository,
            ),
            Container(
              height: 46,
              width: 1,
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
            _Item(
              onTap: () => _onTap(2),
              title: "Sobre o dev",
              iconData: Icons.person,
              value: EnumAppTab.dev,
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final String? icon;
  final IconData? iconData;
  final EnumAppTab value;
  const _Item({
    Key? key,
    required this.onTap,
    required this.title,
    this.icon,
    this.iconData,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Consumer<TabStore>(
            builder: (_, store, __) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: store.value == value
                      ? Theme.of(context).cardColor
                      : Theme.of(context).scaffoldBackgroundColor,
                ),
                width: 60,
                height: 30,
                child: Center(
                  child: icon != null
                      ? SvgPicture.asset(
                          icon!,
                          color: Theme.of(context).highlightColor,
                        )
                      : Icon(iconData),
                ),
              );
            },
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
