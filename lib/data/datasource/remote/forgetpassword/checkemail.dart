import 'package:ecommerces_app/core/class/crud.dart';
import 'package:ecommerces_app/linkapi.dart';

class CheckemailsData {
  Crud crud;
 CheckemailsData(this.crud);
 postData(String email) async {
    var response = await crud.postData(AppLink.checkEmail, {
      'email':email,
    });
   return response.fold((l) => l, (r) => r);
  }
}
 