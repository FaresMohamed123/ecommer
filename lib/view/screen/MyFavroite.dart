// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../controller/myfavoritecontroller.dart';
// import '../../core/class/handlingdataview.dart';
// import '../widget/home/customappbar.dart';
// import '../widget/myfavorite/customListfanorite.dart';

// class MyFavroite extends StatelessWidget {
//   const MyFavroite({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(MyFavoriteController());
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(10),
//         child: GetBuilder<MyFavoriteController>(builder: (controller) {
//           return ListView(
//             children: [
//               Customappbar(
//                 title: 'Find product',
//                 onPressedsearch: () {},
//                 onPressedIconnotif: () {},
//                 onPressedIconfa: () {},
//                 onChangedSearch: (value) {},
//               ),
//                const SizedBox(height: 20),
//               HandlingDataView(
//                 statusRequest: controller.statusRequest,
//                 widget: GridView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: controller.data.length,
//                     gridDelegate:
//                          const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             childAspectRatio: 0.7),
//                     itemBuilder: (context, index) {
//                       return CustomListFaveorite(
//                         myFavoriteModel: controller.data[index],
//                       );
//                     }),
//               )
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }
