import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

class BottomSheetBar extends StatelessWidget {
  final int tabItemSelected;
  final void Function(int) tapItem;
  const BottomSheetBar({super.key, required this.tapItem, required this.tabItemSelected});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 6.5.h,
      shape: CircularNotchedRectangle(),
      notchMargin: 1.h,
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(2.h), topRight: Radius.circular(2.h)),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1.h, blurRadius: 1.h, offset: Offset(0, 2.h)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => tapItem(0),
            ),
            IconButton(
              icon: Icon(
                Icons.heart_broken,
              ),
              onPressed: () => tapItem(1),
            ),
            IconButton(
              icon: Icon(
                Icons.map_outlined,
              ),
              onPressed: () => tapItem(2),
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => tapItem(3),
            ),
          ],
        ),
      ),
    );
  }
}
