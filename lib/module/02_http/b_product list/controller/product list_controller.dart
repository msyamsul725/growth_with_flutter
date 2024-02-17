import 'package:dio/dio.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:fhe_template/shared/util/random_image/random_image.dart';
import 'package:get/get.dart';
import '../../../../config.dart';
import '../view/product list_view.dart';

class ProductListController extends GetxController {
  ProductListView? view;

  deleteAll() async {
    var faker = Faker.instance;
    var response = await Dio().delete(
      "${AppConfig.baseUrl}/products/action/delete-all",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    loadProducts();
  }

  generateProducts() async {
    var faker = Faker.instance;
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
    Map obj = response.data;
    print(obj);
    loadProducts();
  }

  List productList = [];
  loadProducts() async {
    productList = [];
    update();

    /*
    TODO: --
    1. Buat sebuah get request menggunakan DIO
    ! snippet: dio_get

    @GET
    @URL
    "${AppConfig.baseUrl}/products"

    2. Masukkan response data ke dalam productList
    productList = obj["data"];

    3. Panggil setState setelah-nya

    4. Klik tombol Generate
    Jika ada product yang muncul di layar,
    Tasks ini selesai

    5. Klik tombol Refresh,
    Jika list-nya ter-refresh,
    Tasks ini selesai
    */

    var url = "${AppConfig.baseUrl}/products";
    print("url: $url");

    var response = await Dio().get(
      url,
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    productList = obj["data"];
    update();
  }
}
