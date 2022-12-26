import 'package:get/get.dart';

class Dimensions{
  // height 707 width 411
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView= screenHeight/2.63;
  static double pageViewContainer= screenHeight/3.83;
  static double pageViewTextContainer= screenHeight/7.03;

  static double height10= screenHeight/84.4;
  static double height15= screenHeight/56.27;
  static double height20= screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/15.71;
  
  static double width10= screenHeight/84.4;
  static double width15= screenHeight/56.27;
  static double width20= screenHeight/42.2;
  static double width30 = screenHeight/28.13;
  static double width45 = screenHeight/15.71;
  
  //font size
  static double font16 = screenHeight/52.75;
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;

  static double radius15= screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  //icon size
  static double iconSize16= screenHeight/52.75;
  static double iconSize24= screenHeight/35.17;

  static double ListViewImgSize = screenWidth/3.42;
  static double ListViewTextContSize = screenWidth/4.11;

  //popular food
  static double popularFoodImgSize = screenHeight/2.41;

  //bottom height
  static double bottomHeightBar = screenHeight/7.03;
}