import 'package:acommerce/controllers/popular_product_controller.dart';
import 'package:acommerce/controllers/recommended_product_controller.dart';
import 'package:acommerce/data/api/api_client.dart';
import 'package:acommerce/data/repository/popular_product_repo.dart';
import 'package:acommerce/data/repository/recommended_product_repo.dart';
import 'package:acommerce/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient:Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo:Get.find()));
}