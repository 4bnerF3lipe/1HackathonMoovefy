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
              onTap: () => {
                tapItem(0),
              },
              child: TabBarItemWidget(
                  svg: tabItemSelected == 0 ? AssetsAplicativo.homeSelecionado : AssetsAplicativo.homeDescelecionada),
            ),
            GestureDetector(
              onTap: () => {
                tapItem(1),
              },
              child: TabBarItemWidget(
                  svg: tabItemSelected == 1 ? AssetsAplicativo.petSelecionado : AssetsAplicativo.petDescelecionado),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              onTap: () => {
                tapItem(2),
              },
              child: TabBarItemWidget(
                  svg: tabItemSelected == 2 ? AssetsAplicativo.mapaSelecionado : AssetsAplicativo.mapaDescelecionado),
            ),
            GestureDetector(
              onTap: () => {
                tapItem(3),
              },
              child: TabBarItemWidget(
                  svg: tabItemSelected == 3 ? AssetsAplicativo.userSelecionado : AssetsAplicativo.userDescelecionado),
            ),
          ],
        ),
      ),
    );
  }
}
