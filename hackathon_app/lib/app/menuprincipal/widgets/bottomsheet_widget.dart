import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

class BottomSheetBar extends StatelessWidget {
  const BottomSheetBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 8.h,
        color: CoresAplicativo.corPrimaria,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: CoresAplicativo.corSecundaria,
              icon: const Icon(
                Icons.home,
                color: CoresAplicativo.corMarrom,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.map,
                color: CoresAplicativo.corMarrom,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.heart_broken,
                color: CoresAplicativo.corMarrom,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: CoresAplicativo.corMarrom,
              ),
              onPressed: () {},
            )
          ],
        ));
  }
}
