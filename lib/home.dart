import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './homeWidgets/list_items.dart';

class Home extends StatelessWidget{
  static const routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
        //leading: Icon(Icons.menu_outlined,color: Colors.grey,),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/lady.jpg'),
              //child: Image.asset('assets/images/lady.jpg',fit: BoxFit.contain,),
            ),
          )

        ],
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top:20),
                  child: Text('Enjoy your vacation',style: TextStyle(color: Colors.grey),),
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  child: Text('in Heaven!',style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.camera,),
                          onPressed: (){},
                        ),
                        border: InputBorder.none,
                        hintText: 'Search your trip...'
                    ),

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'All',
                        style: TextStyle(color: Color(0xFF2BBDD2),fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'New',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Most Viewed',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Recommended',
                        style: TextStyle(color: Colors.grey),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(top:20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ListItems('Nusa Penida', 'Bali, Indonesia', 'assets/images/travel-spot-1.jpg'),
                      ListItems('Raja Ampat', 'Lombok, Indonesia', 'assets/images/travel-spot-2.jpg'),
                      ListItems('Golden Beach', 'Portugal', 'assets/images/travel-spot-3.jpg'),
                      ListItems('Salzburg Hills', 'Austria', 'assets/images/travel-spot-4.jpg')
                    ],
                  ),
                )

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top:20),
                  child: const Text('Popular Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:CircleAvatar(
                            backgroundColor: Color(0xFF2BBDD2),
                            child: Icon(Icons.house,color:Colors.white,),
                          ) ,
                        )
                        ,
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:  const Text('Hotel',style: TextStyle(color: Colors.grey),),
                        )

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:CircleAvatar(
                            backgroundColor: Color(0xFF2BBDD2),
                            child: Icon(Icons.event,color:Colors.white,),
                          ) ,
                        )
                        ,
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:  const Text('Events',style: TextStyle(color: Colors.grey),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:CircleAvatar(
                            backgroundColor: Color(0xFF2BBDD2),
                            child: Icon(Icons.category,color:Colors.white,),
                          ) ,
                        )
                        ,
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:  const Text('Camping',style: TextStyle(color: Colors.grey),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:CircleAvatar(
                            backgroundColor: Color(0xFF2BBDD2),
                            child: Icon(Icons.drive_eta_rounded,color:Colors.white,),
                          ) ,
                        )
                        ,
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:  const Text('Trips',style: TextStyle(color: Colors.grey),),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}