import 'package:atividades_masterclass/Pages/about_dev_page.dart';
import 'package:atividades_masterclass/Pages/home_page.dart';
import 'package:atividades_masterclass/Pages/repository_page.dart';
import 'package:atividades_masterclass/store/tab_store.dart';
import 'package:atividades_masterclass/utils/enums/enum_app_tab.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:atividades_masterclass/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: PageView(
        onPageChanged: (index) {
          final value = EnumAppTab.values[index];
          Provider.of<TabStore>(context, listen: false).changeTab(value);
        },
        controller: controller,
        children: [
          HomePage(),
          const RepositoryPage(),
          AboutDev(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (index) {
          controller.animateToPage(index,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
    );
  }
}
