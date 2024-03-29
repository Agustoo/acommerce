import 'package:acommerce/controllers/cart_controller.dart';
import 'package:acommerce/controllers/popular_product_controller.dart';
import 'package:acommerce/controllers/recommended_product_controller.dart';
import 'package:acommerce/pages/cart/cart_page.dart';
import 'package:acommerce/pages/food/popular_food_detail.dart';
import 'package:acommerce/pages/food/recommended_food_detail.dart';
import 'package:acommerce/pages/home/food_page_body.dart';
import 'package:acommerce/pages/home/main_food_page.dart';
import 'package:acommerce/pages/splash/splash_page.dart';
import 'package:acommerce/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}
