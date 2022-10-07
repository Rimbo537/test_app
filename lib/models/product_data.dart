import 'package:test_app/models/product_model.dart';
import 'package:test_app/resources/app_images.dart';




  List<Product> getProduct() {
    const data = [
      {
        'nameProd': 'Айс Латте',
        'price': 55,
        'cashbackInt': 10.0,
        'productImg': AppImages.coffeeImg,
      },
      {
        'nameProd': 'Коктейль',
        'price': 43,
        'cashbackInt': 8.5,
        'productImg': AppImages.watchImg,
      },
      {
        'nameProd': 'Бензин А95',
        'price': 65,
        'cashbackInt': 5.0,
        'productImg': AppImages.gasStationImg,
      },
      {
        'nameProd': 'Mi Band',
        'price': 1600,
        'cashbackInt': 15.0,
        'productImg': AppImages.watchImg,
      },
      {
        'nameProd': 'Coffee',
        'price': 30,
        'cashbackInt': 4.0,
        'productImg': AppImages.coffeeImg,
      },
       {
        'nameProd': 'Бензин А95',
        'price': 65,
        'cashbackInt': 5.0,
        'productImg': AppImages.gasStationImg,
      },{
        'nameProd': 'Mi Band',
        'price': 1600,
        'cashbackInt': 15.0,
        'productImg': AppImages.watchImg,
      },
      {
        'nameProd': 'Coffee',
        'price': 30,
        'cashbackInt': 4.0,
        'productImg': AppImages.coffeeImg,
      },
       {
        'nameProd': 'Бензин А95',
        'price': 65,
        'cashbackInt': 5.0,
        'productImg': AppImages.gasStationImg,
      },{
        'nameProd': 'Mi Band',
        'price': 1600,
        'cashbackInt': 15.0,
        'productImg': AppImages.watchImg,
      },
      {
        'nameProd': 'Coffee',
        'price': 30,
        'cashbackInt': 4.0,
        'productImg': AppImages.coffeeImg,
      },
       {
        'nameProd': 'Бензин А95',
        'price': 65,
        'cashbackInt': 5.0,
        'productImg': AppImages.gasStationImg,
      },
    ];
    return data.map<Product>(Product.fromJson).toList();
  }
