import 'package:e_book_project2/consttants.dart';
import 'package:flutter/material.dart';
class TwoSideRoundedButton extends StatelessWidget {
  final String  text;
  final double radious;
  final VoidCallback? press;

  const TwoSideRoundedButton({
    super.key, 
     this.text="",
      this.radious=29, 
      this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        
      ),
      
    );
   
  }
}

