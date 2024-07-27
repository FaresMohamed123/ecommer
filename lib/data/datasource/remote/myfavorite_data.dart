import 'package:ecommerces_app/core/class/crud.dart';
import 'package:ecommerces_app/linkapi.dart';

class MyFavoritedata {
  Crud crud;
  MyFavoritedata(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.favoriteView, {"id": id});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String id) async {
    var response = await crud.postData(AppLink.deletefromfavroite, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}