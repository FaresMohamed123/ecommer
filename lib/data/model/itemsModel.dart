class ItemsModel {
  String? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  int? itemsPrice;
  int? itemsDiscount;
  String? itemsDate;
  int? itemsCat;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNamaAr;
  String? categoriesImage;
  String? categoriesDatetime;
  String? favorite;

  ItemsModel(
      {this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDesc,
      this.itemsDescAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsDate,
      this.itemsCat,
      this.categoriesId,
      this.categoriesName,
      this.categoriesNamaAr,
      this.categoriesImage,
      this.categoriesDatetime,
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'].toString();
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    itemsCat = json['items_cat'];
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNamaAr = json['categories_nama_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
    favorite = json['favorite'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    data['items_discount'] = itemsDiscount;
    data['items_date'] = itemsDate;
    data['items_cat'] = itemsCat;
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_nama_ar'] = categoriesNamaAr;
    data['categories_image'] = categoriesImage;
    data['categories_datetime'] = categoriesDatetime;
    //data['favorite'] = favorite;
    return data;
  }
}