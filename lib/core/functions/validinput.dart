import 'package:get/get.dart';

validInPut(String val, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'not valid username';
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'not valid email';
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'not valid phone';
    }
  }
 if (val.isEmpty) {
    return ' cant be Empty';
  }
  if (val.length < min) {
    return ' cant be less than $min';
  }
   if (val.length > max) {
    return ' cant be larger than $max';
  }
}
