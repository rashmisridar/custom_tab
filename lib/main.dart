import 'package:flutter/material.dart';
import 'package:hype_custom_tab/TabIndicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title:
                Text('All', style: TextStyle(color: const Color(0xff596173))),
            backgroundColor: Colors.white,
            centerTitle: true,
            bottom: TabBar(
              controller: _tabController,
              labelColor: const Color(0xff525c6e),
              unselectedLabelColor: const Color(0xffacb3bf),
              indicatorPadding: EdgeInsets.all(0.0),
              indicatorWeight: 4.0,
              labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
              indicator: ShapeDecoration(
                  shape: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                          style: BorderStyle.solid)),
                  gradient: LinearGradient(
                      colors: [Color(0xff0081ff), Color(0xff01ff80)])),
              tabs: <Widget>[
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text(
                    "Visual",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text("Tabular", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ),
          body: Container()),
    );
  }
}
