import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_AppBar.dart';
import 'package:nft_app_ui/components/my_bottomBar.dart';
import 'package:nft_app_ui/tabs/recent_tab.dart';
import 'package:nft_app_ui/tabs/top_tab.dart';
import 'package:nft_app_ui/tabs/trending_tab.dart';
import 'package:nft_app_ui/theme/glass_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Tab> tabOptions = const [
    Tab(text: "Recent"),
    Tab(text: "Trending"),
    Tab(text: "Top"),
  ];
  int _currentindex = 0;
  void _handleBottomIndexChanger(int? index) {
    setState(() {
      _currentindex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottombar(
            index: _currentindex,
            onTap: _handleBottomIndexChanger,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              MyAppbar(),
              TabBar(
                tabs: tabOptions,
                indicatorColor: Colors.lightBlueAccent,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [RecentTab(), TrendingTab(), TopTab()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
