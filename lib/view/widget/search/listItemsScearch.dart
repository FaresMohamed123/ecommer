import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../data/model/itemsModel.dart';
import '../../../linkapi.dart';

class ListItemsScearch extends GetView<HomeControllerImp> {
  const ListItemsScearch({super.key, required this.listdatamodel});
  final List<ItemsModel> listdatamodel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listdatamodel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              controller.goToPageProductDetails(listdatamodel[index]);
            },
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: CachedNetworkImage(
                            imageUrl:
                                '${AppLink.imagestItems}/${listdatamodel[index].itemsImage}')),
                    Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text('${listdatamodel[index].itemsName}'),
                          subtitle: Text('${listdatamodel[index].itemsPrice}'),
                        ))
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
