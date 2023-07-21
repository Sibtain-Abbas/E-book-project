
import 'package:e_book_project2/consttants.dart';
import 'package:e_book_project2/widgets/reading_card_list.dart';
import 'package:flutter/material.dart';
import'package:flutter/rendering.dart';


 class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(width: double.infinity,
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("assets/images/main_page_bg.png"),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),


      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: RichText(text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [TextSpan(text: "what are you \nreading"),
            TextSpan(
              text: "today?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
        
            ]
          )),
        ),
              SizedBox(height: 30,),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListCard(
                      image: "assets/images/book-1.png",
                      title: "Crushing & Influence",
                      auth: "Gary Venchuk",
                      rating: 4.9,
                    ),
                     ReadingListCard(
                      image: "assets/images/book-2.png",
                      title: "Top Ten Business Hacks",
                      auth: "Herman Joel",
                      rating: 4.8,
                    ),
                    
                   
                    SizedBox(width: 30,)
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  RichText(text:  TextSpan(
                    style: Theme.of(context).textTheme.displayMedium,
                    children: [
                      TextSpan(
                        text: "Best of the"
                      ),
                      TextSpan(text: "day",style: TextStyle(fontWeight: FontWeight.bold),)
                    ]
                  ),
                  ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    height: 205,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container (
                            padding: EdgeInsets.only(left: 24, top: 24, right:0.37),
                            height: 185,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xFFEAEAEA).withOpacity(.45),
                        borderRadius: BorderRadius.circular(29),
                        
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [Text("New York Time Best For 11 March 2020",
                          style:TextStyle(
                            fontSize: 9,
                            color: kLightBlackColor,
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text("How To Win \nFriends & Influence",
                           style: Theme.of(context).textTheme.titleMedium,),
                            
                            
                          ],
                          ),
                        ),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          child:Image.asset("assets/images/book-3.png",
                          width:MediaQuery.of(context).size.width*.37,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
        ],     
      ),
                  
      
      ),
    );
  }  
}

