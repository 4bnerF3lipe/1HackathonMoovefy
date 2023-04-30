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
      child: Stack(children: [
        SvgPicture.asset(
          AssetsAplicativo.header,
          width: 100.w,
          fit: BoxFit.fill,
          height: 15.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 2.h, 4.w, 0),
            child: SvgPicture.asset(
              AssetsAplicativo.perfilUsuario,
              width: 4.w,
              height: 4.h,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Expanded(child: child),
      ]),
    );
  }
}
