import 'package:dio/dio.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:fhe_template/shared/util/random_image/random_image.dart';
import 'package:get/get.dart';
import '../../../../config.dart';
import '../view/static card_view.dart';

class StaticCardController extends GetxController {
  StaticCardView? view;

  @override
  void onInit() {
    loadProductCount();
    super.onInit();
  }

  int productCount = 0;
  loadProductCount() async {
    productCount = 0;
    update();

    var response = await Dio().get(
      "${AppConfig.baseUrl}/products/action/count",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    productCount = obj["data_count"];
    update();

    /*
    TODO: --
    1. Buat sebuah get request menggunakan DIO
    ! snippet: dio_get

    @GET
    @URL
    "${AppConfig.baseUrl}/products/action/count

    2. Masukkan response data ke dalam productList
    productCount = obj["data_count"];

    3. Panggil setState setelah-nya
    */
  }

  @override
  refresh() async {
    print("Refresh..");
    var faker = Faker.instance;
    for (var i = 0; i < 3; i++) {
      var response = await Dio().post(
        "${AppConfig.baseUrl}/products",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "photo": faker.generateRandomImage(),
          "product_name": faker.commerce.productName(),
          "price": faker.commerce.price(
            symbol: "",
          ),
          "description": faker.commerce.productDescription(),
        },
      );
    }
    await loadProductCount();
  }
}
