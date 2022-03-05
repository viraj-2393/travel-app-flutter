import 'package:flutter/foundation.dart';
class TourData extends ChangeNotifier{
  final String title;
  final String location;
  final String imageUrl;
  final String description;

  TourData(this.title,this.location,this.imageUrl,this.description);
}