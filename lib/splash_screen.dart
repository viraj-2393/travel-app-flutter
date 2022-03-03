import 'package:flutter/material.dart';
import './home.dart';
class SplashScreen extends StatelessWidget{
  void navigate_to_home_page(BuildContext context){
    Navigator.of(context).pushNamed(Home.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF2BBDD2)
                        ),
                        child: Icon(Icons.airplanemode_active,color: Colors.white,),
                      ),
                      Text('ravel',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30),
                    child: const Text('Enjoy every good moment',style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:30),
                    child: const Text('Keep the world adventurous forever! A way to to explore our beautiful planet.',
                      style: TextStyle(fontSize:16,color: Colors.grey),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: ()=>navigate_to_home_page(context),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 30
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFEB6958)
                        ),
                        child: Text('Explore',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )


                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                RotationTransition(
                  turns: new AlwaysStoppedAnimation(30 / 360),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 50
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF2BBDD2)
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFEB6958)
                        )
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  width: double.infinity,
                  child: Image.asset(
                      'assets/images/tourist-couple.png'
                  ),
                )


              ],
            )

          ],
        )
    );
  }
}