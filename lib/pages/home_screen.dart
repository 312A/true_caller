import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // color:Colors.blue,
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.12,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Center(
                                    child: Icon(Icons.person),
                                  ),
                                ),
                                Positioned(
                                  top: 2,
                                  right: 1,
                                  child: CircleAvatar(
                                    radius: 8,
                                    child: Center(
                                      child: Text("1"),
                                    ),
                                    backgroundColor: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Recent ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
