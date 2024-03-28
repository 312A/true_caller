import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:
           Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child:const Row(
              children: [
                 Expanded(
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          bottom: const TabBar(
            tabs:[
              Tab(
                icon: Icon(
                  Icons.call,
                  
                ),
              ),
               Tab(
                icon: Icon(Icons.contacts),
              ),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Text("Call"),
            Text("Conatacts"),
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: ShapeBorder.lerp(
                const CircleBorder(),
                const StadiumBorder(),
                0.5,
              ),
              onPressed: (){},
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
              FloatingActionButton(
              onPressed: (){},
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}