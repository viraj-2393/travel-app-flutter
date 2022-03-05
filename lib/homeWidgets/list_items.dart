import 'package:flutter/material.dart';
import '../tour_details.dart';
import '../providers/tour.dart';
import 'package:provider/provider.dart';
class ListItems extends StatelessWidget{
  final int index;
  ListItems(this.index);
  @override
  Widget build(BuildContext context) {
    final tourData = Provider.of<Tour>(context);
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 150,
            child: GestureDetector(
              onTap:(){
                Navigator.of(context).pushNamed(TourDetails.routeName,arguments:{
                  'index':index
                });
              },
              child: GridTile(
                child: Image.asset(tourData.tourData(index).imageUrl,fit: BoxFit.cover,),
                footer:GridTileBar(
                  backgroundColor: Colors.black26,
                  subtitle: FittedBox(child:Text(tourData.tourData(index).title)),
                  trailing: IconButton(
                    icon: Icon(Icons.favorite,color: Colors.white,size: 18,),
                    onPressed: (){},
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}