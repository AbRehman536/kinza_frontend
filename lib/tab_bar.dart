import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              height: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)
                      ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.redAccent,
                        isScrollable: true,
                        tabs: [
                      Tab(
                        icon: Icon(Icons.home),
                        text: "Home",
                      ),
                      Tab(
                        icon: Icon(Icons.settings),
                        text: "Settings",
                      ),
                      Tab(
                        icon: Icon(Icons.person),
                        text: "Profile",
                      ),
                      Tab(
                        icon: Icon(Icons.home),
                        text: "Home",
                      ),
                      Tab(
                        icon: Icon(Icons.settings),
                        text: "Settings",
                      ),
                      Tab(
                        icon: Icon(Icons.person),
                        text: "Profile",
                      ),
                      Tab(
                        icon: Icon(Icons.home),
                        text: "Home",
                      ),
                      Tab(
                        icon: Icon(Icons.settings),
                        text: "Settings",
                      ),
                      Tab(
                        icon: Icon(Icons.person),
                        text: "Profile",
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(
            children: [
              Image.asset("assets/images/ferrari.jpg",width: 300,height: 200,),
              Text("Ferrari", style: TextStyle(
                fontSize: 30,
              ),)
            ],
          ),),
          Center(child: Column(
            children: [
              Icon(Icons.settings, size: 50,),
              Text("Settings", style: TextStyle(
                fontSize: 30,
              ),)
            ],
          ),),
          Center(child:Column(
            children: [
              Icon(Icons.person, size: 50,),
              Text("Name"),
              ElevatedButton(onPressed: (){}, child: Text("Update Profile"))
            ],
          ),),
        ])
      ),
    );
  }
}
