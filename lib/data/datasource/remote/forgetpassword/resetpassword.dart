import 'package:ecommerces_app/core/class/crud.dart';
import 'package:ecommerces_app/linkapi.dart';

class ResetpasswordData {
  Crud crud;
 ResetpasswordData(this.crud);
 postData(String email,String password) async {
    var response = await crud.postData(AppLink.resetPassword, {

      'email':email,
      'password':password,
  
    });
   return response.fold((l) => l, (r) => r);
  }
}
 