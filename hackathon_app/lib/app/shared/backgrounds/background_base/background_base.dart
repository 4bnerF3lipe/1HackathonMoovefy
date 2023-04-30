import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_app/app/shared/models/assets_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../models/cores_aplicativo.dart';

class BackgroundBase extends StatelessWidget {
  final Widget child;
  const BackgroundBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Container(
          color: Colors.transparent,
          alignment: Alignment.topCenter,
          child: SvgPicture.asset(
            AssetsAplicativo.header,
            width: 100.w,
            fit: BoxFit.fill,
            height: 16.5.h,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.5.h),
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AssetsAplicativo.petlocktext,
                  width: 8.w,
                  fit: BoxFit.fill,
                  height: 8.w,
                ),
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ],
    ));
  }
}
