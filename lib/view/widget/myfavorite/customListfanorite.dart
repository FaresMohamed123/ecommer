// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:ecommerces_app/data/model/myfavoritemodel.dart';
// import 'package:get/get.dart';
// import '../../../controller/myfavoritecontroller.dart';
// import '../../../linkapi.dart';
// import '/core/constant/color.dart';
// import 'package:flutter/material.dart';

// class CustomListFaveorite extends GetView<MyFavoriteController> {
//   const CustomListFaveorite({
//     super.key,
//     required this.myFavoriteModel,
//   });
//   final MyFavoriteModel myFavoriteModel;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Hero(
//                   tag: "${myFavoriteModel.itemsId}",
//                   child: CachedNetworkImage(
//                     imageUrl:
//                         "${AppLink.imagestItems}/${myFavoriteModel.itemsImage!}",
//                     fit: BoxFit.fill,
//                     height: 100,
//                   )),
//               const SizedBox(height: 10),
//               Text(
//                 '${myFavoriteModel.itemsName}',
//                 style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16),
//               ),
//               Row(
//                 children: [
//                   const Text(
//                     'Rating 3.5',
//                     textAlign: TextAlign.center,
//                   ),
//                   const Spacer(),
//                   ...List.generate(
//                       5,
//                       (index) => index < 3
//                           ? const Icon(
//                               Icons.star,
//                               size: 15,
//                               color: AppColor.black,
//                             )
//                           : const Icon(
//                               Icons.star,
//                               size: 15,
//                               color: Colors.amber,
//                             ))
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '${myFavoriteModel.itemsPrice}\$',
//                     style: const TextStyle(
//                         color: AppColor.primaryColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18),
//                   ),
//                   IconButton(
//                       onPressed: () {
//                         controller.myFavoritedata.deleteData(myFavoriteModel.favoriteId.toString());
//                       },
//                       icon: const Icon(
//                         Icons.delete_outline_outlined,
//                         color: AppColor.primaryColor,
//                       ))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
