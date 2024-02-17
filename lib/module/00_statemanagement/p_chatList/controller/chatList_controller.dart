import 'package:get/get.dart';
import '../view/chatList_view.dart';

class ChatListController extends GetxController {
  ChatListView? view;

  List chatList = [
    {
      "name": "Syamsul",
      "message": "Hello bro",
      "read": true,
    },
    {
      "name": "Risma",
      "message": "Yes, apa kabar?",
      "read": true,
    },
    {
      "name": "Soleh",
      "message": "Ok bro, gua mau tanya soal Flutter, ada waktu?",
      "read": false,
    },
    {
      "name": "Deny",
      "message": "Terkait state management di Riverpod",
      "read": false,
    },
    {
      "name": "Jarwo",
      "message": "Kabari bro kalo luang",
      "read": false,
    }
  ];
}
