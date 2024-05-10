import 'package:get/get.dart';

import '../../Bottom Nvigation Pages/pages/Entry Point Page/Getx_/entry_point_page_controller.dart';

Future<void> DependencyInjection() async{
  Get.lazyPut(() => EntPPageCntrlr());

}
