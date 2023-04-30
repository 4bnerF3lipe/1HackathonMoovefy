import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

class CardWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String assetImage;
  final String? titulo;
  const CardWidget({super.key, this.height, this.width, required this.assetImage, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: width,
          height: height ?? 10.h,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(2.h))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SvgPicture.asset(assetImage), SizedBox(height: .5.h), Text(titulo ?? "")],
          )),
    );
  }
}
