import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // late final ChatController controller;

  @override
  void initState() {
    // controller = Get.put(ChatController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
        child: Material(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Container(
              width: 100.w,
              height: 50.h,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [CoresAplicativo.corDetalhe, CoresAplicativo.corBranca])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.5.h),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: CoresAplicativo.cinzaClaro,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 6.h,
                    width: 12.5.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        border: Border.all(width: 1, color: CoresAplicativo.cinzaClaro)),
                    child: Icon(Icons.verified_user),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: .5.h,
                      ),
                      TextWidget(
                        texto: "Marcos",
                        textColor: CoresAplicativo.cinzaClaro,
                        fontSize: Fontes.fonteMedia,
                      ),
                      TextWidget(
                        texto: "Digitando...",
                        textColor: CoresAplicativo.corPrimaria,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w)),
                            hintText: 'Digite algo...',
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: CoresAplicativo.cinzaClaro,
                                ),
                                borderRadius: BorderRadius.circular(10.w)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: CoresAplicativo.corPrimaria),
                                borderRadius: BorderRadius.circular(10.w)),
                            focusColor: CoresAplicativo.corPrimaria),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        border: Border.all(width: 1, color: CoresAplicativo.cinzaClaro),
                      ),
                      child: Icon(
                        Icons.search,
                        size: 6.h,
                        color: CoresAplicativo.textColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
