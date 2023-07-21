

import 'package:e_book_project2/consttants.dart';
import 'package:e_book_project2/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,),
        ),
           home: WelcomeScreen(),

    );
    
  }
}
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png",),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
        
           SizedBox(
            width: MediaQuery.of(context).size.width*.6,
             child:  RoundedButton(
              
              text: "start reading",
              fontSize: 20, 
              press:(){Navigator.push(context, MaterialPageRoute(builder: (context){return HomeScreen();},),);},
              
             ),
           ),
          ],
        
              )
        ),
    );
        
    
    
}
}

class RoundedButton extends StatelessWidget {
  final String text;
   
  final double verticalPadding;
  final double fontSize;
  final VoidCallback? press;


  const RoundedButton ({super.key, 
   this.text='start reading', 
     
     this.verticalPadding=16,
       this.fontSize=16,
       this.press,
       
         
     
     
      });
     

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: press,
      
      child:Container(
        
        alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: verticalPadding,horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,15),
            blurRadius: 30,
            color: Color(0xFF666666).withOpacity(.11),
          )
        ]
      ),
      child: Text(
       text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
          
    )
    );
    
  }
}