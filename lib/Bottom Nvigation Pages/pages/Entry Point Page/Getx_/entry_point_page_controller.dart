import 'package:get/get.dart';



class EntPPageCntrlr extends GetxController{

  int get btmNvigationIndex => _btmNvigationIndex;
  int _btmNvigationIndex = 0;

  set setBtmNgIndexValue(int newValue){
    _btmNvigationIndex = newValue;
    update();

  }

//update();
}