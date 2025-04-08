import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_bottomBar.dart';
import 'package:nft_app_ui/tabs/recent_tab.dart';
import 'package:nft_app_ui/tabs/top_tab.dart';
import 'package:nft_app_ui/tabs/trending_tab.dart';

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
        backgroundColor: Colors.grey[400],
        bottomNavigationBar: MyBottombar(
          index: _currentindex,
          onTap: _handleBottomIndexChanger,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Collections",
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white54),
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey[800],
                          size: 40,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(tabs: tabOptions, indicatorColor: Colors.lightBlueAccent),
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
