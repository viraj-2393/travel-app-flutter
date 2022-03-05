import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/tour.dart';
class TourDetails extends StatelessWidget{
  static const routeName = '/tour-details';
  @override
  Widget build(BuildContext context) {
    final tourData = Provider.of<Tour>(context);
    final idx = ModalRoute.of(context)?.settings.arguments as Map<String,int>;
    int index = idx['index'] as int;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 420,
                  child: Image.asset(tourData.tourData(index).imageUrl,fit: BoxFit.fitHeight,),
                ),
                Container(
                  height: 420,
                  color: Colors.black26,
                ),
                Container(
                  margin: EdgeInsets.only(top:50),
                  child: ListTile(
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: FittedBox(
                          child:IconButton(
                            icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.grey,),
                            onPressed: (){},
                          ) ,
                        ),
                      ),
                    ),
                    trailing:  IconButton(
                      icon: Icon(Icons.more_horiz,color: Colors.white,size: 30,),
                      onPressed: (){},
                    ),
                  ),
                ),


              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListTile(
                title: Text(tourData.tourData(index).title,style: TextStyle(fontSize: 25),),
                subtitle: Text(tourData.tourData(index).location,style: TextStyle(color: Colors.grey),),
                trailing: IconButton(icon: Icon(Icons.favorite,color: Colors.deepOrange,),onPressed: (){},),
              ),
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:Colors.white,
                        child: Icon(Icons.star,color: Color(0xFFFEA131),),
                      ),
                      Text('4.8',style: TextStyle(fontSize: 20),),
                      Text('2.8k reviews',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:Colors.white,
                        child: Icon(Icons.wb_sunny_outlined,color: Colors.red,),
                      ),
                      Text('29°C',style: TextStyle(fontSize: 20),),
                      Text('Sunny',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor:Colors.white,
                        child: Icon(Icons.directions_railway,color: Colors.blueAccent,),
                      ),
                      Text('75Km',style: TextStyle(fontSize: 20),),
                      Text('Direction',style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Text(tourData.tourData(index).description,style: TextStyle(color: Colors.grey),softWrap: true,)

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}