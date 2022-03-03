import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  static const routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu_outlined,color: Colors.grey,),
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
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
            )

          ],
        ),
      ),
    );
  }
}