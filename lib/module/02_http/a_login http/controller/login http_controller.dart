import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../../config.dart';
import '../../../../shared/util/dialog/show_info_dialog.dart';
import '../view/login http_view.dart';

class LoginHttpController extends GetxController {
  LoginHttpView? view;

  String email = "admin@demo.com";
  String password = "123456";

  doLogin() async {
    var response = await Dio().post(
      "${AppConfig.baseUrl}/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "email": email,
        "password": password,
      },
    );
    Map obj = response.data;
    if (obj["success"] == true) {
      showInfoDialog("Login success!");
    } else {
      showInfoDialog("Login gagal!");
    }

    /*
    TODO: --
    1. Buat sebuah post request menggunakan DIO
    ! snippet: dio_post
    Atur request-nya menjadi seperti ini:
    
    @POST
    @URL
    "${AppConfig.baseUrl}/auth/action/login"

    @DATA 
    "email": email,
    "password": password,

    2. Tambahkan kode ini setelah-nya:
    if(obj["success"]==true) {
      showInfoDialog("Login success!");
    }
    else {
      showInfoDialog("Login gagal!");
    }

    3. Cobalah isi dengan email asal,
    Jika alert Login Gagal muncul, kamu sudah berhasil
    Menyelesaikan tasks ini
    */
  }
}
