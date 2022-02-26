import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                  'assets/images/amusement-part.jpg',
                  fit: BoxFit.cover,
                ),
            ),
            
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.3),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top:100),
                      child: const Text(
                        'Unforgotten Experiences',
                        style: TextStyle(fontSize: 30.0,color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20,right: 20,top:10),
                      child: Text('Book your next tour with us! We have amazing tours around the world.',
                        style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(left:20,right: 20,bottom: 50,top:50),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Explore'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFE2352),
                    ),
                  ),
                )


              ],
            )
          ],
        )
      );
  }
}


