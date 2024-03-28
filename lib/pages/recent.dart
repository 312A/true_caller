import 'package:flutter/material.dart';


class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recent Call Done"),
            Text("Show Lists"),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.2,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index)=>CircleAvatar(
            child: Center(child: Text("$index"),),
          )),
        ),
      ],
    );
  }
}