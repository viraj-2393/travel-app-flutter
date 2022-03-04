import 'package:flutter/material.dart';

class ListItems extends StatelessWidget{
  final String name;
  final String location;
  final String imageUrl;
  ListItems(this.name,this.location,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 150,
            child: GridTile(
              child: Image.asset(imageUrl,fit: BoxFit.cover,),
              footer:GridTileBar(
                backgroundColor: Colors.black26,
                subtitle: FittedBox(child:Text(name)),
                trailing: IconButton(
                  icon: Icon(Icons.favorite,color: Colors.white,size: 18,),
                  onPressed: (){},
                ),
              ),
            ),
          )
      ),
    );
  }
}