import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../models/assets_aplicativo.dart';

class TabBarItemWidget extends StatelessWidget {
  late String svg;
  TabBarItemWidget({super.key, required this.svg});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svg,
      fit: BoxFit.contain,
      height: 8.w,
      width: 8.w,
    );
  }
}
