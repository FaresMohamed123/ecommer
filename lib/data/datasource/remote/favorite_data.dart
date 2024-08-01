// import 'package:ecommerces_app/core/class/crud.dart';
// import 'package:ecommerces_app/linkapi.dart';

// class Favoritedata {
//   Crud crud;
//   Favoritedata(this.crud);

//   addFavorite(String usersid, String itemsid) async {
//     var response = await crud.postData(
//         AppLink.favoriteAdd, {'usersid': usersid, 'itemsid': itemsid});
//     return response.fold((l) => l, (r) => r);
//   }

//   deleteFavorite(String usersid, String itemsid) async {
//     var response = await crud.postData(
//         AppLink.favoriteRemove, {'usersid': usersid, 'itemsid': itemsid});
//     return response.fold((l) => l, (r) => r);
//   }
// }
