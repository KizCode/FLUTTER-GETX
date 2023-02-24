import 'dart:convert';

import 'package:get/get.dart';
import 'package:laporan/app/data/entertainment_response.dart';
import 'package:laporan/app/data/sports_response.dart';

import '../../../data/headline_response.dart';
import '../../../utils/api.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  final _getConnect = GetConnect();

  Future<HeadlineResponse> getHeadline() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return HeadlineResponse.fromJson(jsonDecode(response.body));
  }



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

//fungsi untuk mengambil headline dari server
