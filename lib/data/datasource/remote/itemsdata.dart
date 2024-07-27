import 'package:ecommerces_app/core/class/crud.dart';
import 'package:ecommerces_app/linkapi.dart';

class Itemsdata {
  Crud crud;
  Itemsdata(this.crud);

  getData(String id, String usersid) async {
    var response = await crud.postData(AppLink.items,{'id':  id,'usersid':usersid});
    return response.fold((l) => l, (r) => r);
  }
}
