import 'package:ecommerces_app/core/class/crud.dart';
import 'package:ecommerces_app/linkapi.dart';

class VerifycodeForgetPasswordData {
  Crud crud;
 VerifycodeForgetPasswordData(this.crud);
 postData(String email,String verifycode) async {
    var response = await crud.postData(AppLink.verifycodeforgetpassword, {

      'email':email,
      'verifycode':verifycode,
  
    });
   return response.fold((l) => l, (r) => r);
  }
}
 