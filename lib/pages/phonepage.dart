import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truecaller/pages/fav.dart';
import 'package:truecaller/pages/recent.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Building PhonePage");
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // color: Colors.blue,
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.13,
                              child: const Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    child: Center(
                                      child: Icon(Icons.contact_mail),
                                    ),
                                  ),
                                  Positioned(
                                    top: 2,
                                    right: 1,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.blue,
                                      child: Center(child: Text("1")),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Text("Name,Number,Search"),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert))
                    ],
                  ),
                ),
              ),
              Container(
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.refresh),
                          SizedBox(
                            width: 6,
                          ),
                          Text("Recent")
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(
                            width: 6,
                          ),
                          Text("Favorite")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //  Expanded(
              //   child: TabBarView(
              //     controller: _tabController,
              //     children: const  [
              //       Recent(),
              //       FavoriteScreen(),
              //     ],
              //   ),
              // ),
            
            ],
          ),
        ),
      ),
    );
  }
}
