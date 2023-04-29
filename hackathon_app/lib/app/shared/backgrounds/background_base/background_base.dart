import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../models/cores_aplicativo.dart';

class BackgroundBase extends StatelessWidget {
  final Widget? child;
  const BackgroundBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 2.w),
            height: 7.h,
            width: 100.w,
            color: CoresAplicativo.corPrimaria,
            child: Row(children: [
              const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: CoresAplicativo.corMarrom,
              ),
              Text(
                "Voltar",
                style: TextStyle(color: CoresAplicativo.corMarrom, fontWeight: FontWeight.bold, fontSize: 5.w),
              ),
            ]),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: child,
          ),
        ],
      ),
    ));
  }
}
