import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(10, (index) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(),
      )),
    );
  }
}