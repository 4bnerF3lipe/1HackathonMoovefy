import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

abstract class CoreController extends GetxController {
  late RxBool _isLoading;
  late final GlobalKey<FormState> _formKey;
  BaseController() {
    _isLoading = false.obs;
    _formKey = GlobalKey<FormState>();
    iniciaControlador();
  }

  void iniciaControlador();
  bool get isLoading => _isLoading.value;
  GlobalKey<FormState> get formKey => _formKey;
  bool get formKeyValidate => formKey.currentState?.validate() ?? false;
  set isLoading(bool value) => _isLoading.value = value;
}
