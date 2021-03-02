import 'package:dev_task/screens/tabs/account_tab.dart';
import 'package:dev_task/screens/tabs/card_tab.dart';
import 'package:dev_task/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  void onItemTapped(index) {
    setState(() {
      selectedTab = index;
      tabController.index = selectedTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/menu.png",
                    height: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "My Accounts",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColorDark),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TabBar(
                  controller: tabController,
                  onTap: onItemTapped,
                  labelColor: primaryColor,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: primaryColorDark,
                  tabs: [
                    new Tab(
                      text: 'Accounts',
                    ),
                    new Tab(
                      text: 'Cards',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 2,
                    color: selectedTab == 0 ? primaryColor : Colors.white,
                  ),
                  Container(
                    width: 100,
                    height: 2,
                    color: selectedTab == 1 ? primaryColor : Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: <Widget>[
                    AccountsTab(),
                    CardsTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => print("on tapped"),
      ),
    );
  }
}
