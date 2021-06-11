import 'package:flutter/material.dart';

class CategoriesGrid extends StatelessWidget {
  final List<Widget> items;
  const CategoriesGrid({
    this.items,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.3,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          }),
    );
  }
}