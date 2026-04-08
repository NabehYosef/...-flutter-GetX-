import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices
    extends GetxService {
  late SharedPreferences sharedpref;

  Future<SettingServices> init() async {
    //Start Services
    sharedpref =
        await SharedPreferences.getInstance();
    //End
    return this;
  }
}
