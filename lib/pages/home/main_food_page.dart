import 'package:acommerce/pages/home/food_page_body.dart';
import 'package:acommerce/utils/dimensions.dart';
import 'package:acommerce/widgets/big_text.dart';
import 'package:acommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Column(
        children: [
          Container( 
            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Turkey", color: AppColors.mainColor,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: Dimensions.width15)),
                          SmallText(text: "Amasya", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                      ],)
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
            )),
        ],
      ),
    );
  }
}