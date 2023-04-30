import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_app/app/shared/models/assets_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/widgets/TabBarWidget.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: TabBarItemWidget(svg: AssetsAplicativo.homeSelecionado),
              onTap: () => tapItem(0),
            ),
            GestureDetector(
              child: TabBarItemWidget(svg: AssetsAplicativo.petDescelecionado),
              onTap: () => tapItem(1),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              child: TabBarItemWidget(svg: AssetsAplicativo.mapaDescelecionado),
              onTap: () => tapItem(2),
            ),
            GestureDetector(
              child: TabBarItemWidget(svg: AssetsAplicativo.userDescelecionado),
              onTap: () => tapItem(3),
            ),
          ],
        ),
      ),
    );
  }
}
