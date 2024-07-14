
class CategoriesModel {
  String? categoriesId;
  String? categoriesName;
  String? categoriesNamaAr;
  String? categoriesImage;
  String? categoriesDatetime;

  CategoriesModel(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNamaAr,
      this.categoriesImage,
      this.categoriesDatetime});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNamaAr = json['categories_nama_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
  }

  Map<String, dynamic> toJson() {
    
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_nama_ar'] =categoriesNamaAr;
    data['categories_image'] = categoriesImage;
    data['categories_datetime'] = categoriesDatetime;
    return data;
  }
}





////
///
class CategoriesModeles {
  final String title;
   String? subtitle;

  final String image;

  CategoriesModeles({required this.title, required this.image,this.subtitle});
}

final List<CategoriesModeles> modelList = [
    CategoriesModeles(title: 'Cofe', image: 'assets/images/cofe.png',subtitle: 'Welcom'),
    CategoriesModeles(title: 'Sweets', image: 'assets/images/sweets.png',subtitle: 'Iam'),
    CategoriesModeles(title: 'Shose', image: 'assets/images/shose.png',subtitle: 'Fares'),
    CategoriesModeles(title: 'Food', image: 'assets/images/food.png',subtitle: 'Mohamed'),
    CategoriesModeles(title: 'Antiques', image: 'assets/images/antiques.png',subtitle: 'programmer'),
    CategoriesModeles(title: 'Atlilah', image: 'assets/images/atlilah.png',subtitle: 'flutter'),
    CategoriesModeles(title: 'Clinics', image: 'assets/images/clinics.png',subtitle: 'Welcom'),
    CategoriesModeles(title: 'electrical', image: 'assets/images/electricalTools.png',subtitle: 'Welcom'),
    CategoriesModeles(title: 'Hometools', image: 'assets/images/hometools.png',subtitle: 'to thank'),
    CategoriesModeles(title: 'makeUp', image: 'assets/images/makeUp.png',subtitle: 'Welcom'),
    CategoriesModeles(title: 'Trivling', image: 'assets/images/rentingCars.png',subtitle: 'Welcom'),
  ];
