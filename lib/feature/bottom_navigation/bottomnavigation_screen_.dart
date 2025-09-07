
import 'package:get/get.dart';

class InternetController extends GetxController {
  var isConnected = true.obs;
  void updateConnectionStatus(bool status) {
    isConnected.value = status;
  }
}
