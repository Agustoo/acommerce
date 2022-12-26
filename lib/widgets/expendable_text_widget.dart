import 'package:acommerce/utils/colors.dart';
import 'package:acommerce/utils/dimensions.dart';
import 'package:acommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpendableTextWidget extends StatefulWidget {
  final String text;
  const ExpendableTextWidget({super.key, required this.text});

  @override
  State<ExpendableTextWidget> createState() => ExpendableTextWidgetState();
}

class ExpendableTextWidgetState extends State<ExpendableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;
  
  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt(),widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color:AppColors.paraColor,size: Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height: 1.8,color:AppColors.paraColor,size: Dimensions.font16,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });

            },
            child: Row(
              children: [
                SmallText(text: hiddenText?"Show More":"Show Less",color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,),
              ],
            ),
          )
        ],
      ),
    );
  }
}