import 'package:alinino/pages/add/add_page.dart';
import 'package:alinino/pages/compass/compas_page.dart';
import 'package:alinino/pages/home/home_page.dart';
import 'package:alinino/pages/message/message_page.dart';
import 'package:alinino/pages/profile/profile_page.dart';
import 'package:alinino/pages/tab_bar/widget/bottom_navigation_bar.dart';
import 'package:alinino/provider/constants/bottom_select_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabBarPage extends ConsumerWidget {
  TabBarPage({super.key});
  List pageList = const [
    HomePage(),
    CompasPage(),
    AddPage(),
    MessagePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pageList[ref.watch(selectIndex)],
      bottomNavigationBar: const TabBottomNavigationBar(),
    );
  }
}
