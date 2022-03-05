import 'package:flutter/material.dart';
import './tourData.dart';

class Tour extends ChangeNotifier{
  List<TourData> _tourData = [
    TourData('Nusa Penida', 'Bali, Indonesia', 'assets/images/travel-spot-1.jpg','Nusa Penida is an island southeast of Indonesia\'s island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan and twelve even smaller islands. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres.'),
    TourData('Raja Ampat', 'Lombok, Indonesia', 'assets/images/travel-spot-2.jpg','The Raja Ampat Islands are an Indonesian archipelago off the northwest tip of Bird’s Head Peninsula in West Papua. Comprising hundreds of jungle-covered islands, Raja Ampat is known for its beaches and coral reefs rich with marine life. Ancient rock paintings and caves are on Misool Island, while the crimson bird of paradise lives on Waigeo Island. Batanta and Salawati are the archipelago’s other main islands.'),
    TourData('Golden Beach', 'Portugal', 'assets/images/travel-spot-3.jpg','Portugal is a southern European country on the Iberian Peninsula, bordering Spain. Its location on the Atlantic Ocean has influenced many aspects of its culture: salt cod and grilled sardines are national dishes.'),
    TourData('Salzburg Hills', 'Austria', 'assets/images/travel-spot-4.jpg','Salzburg is an Austrian city on the border of Germany, with views of the Eastern Alps. The city is divided by the Salzach River, with medieval and baroque buildings of the pedestrian Altstadt (Old City) on its left bank, facing the 19th-century Neustadt (New City) on its right. The Altstadt birthplace of famed composer Mozart is preserved as a museum displaying his childhood instruments.'),
    //TourData('Nusa Penida', 'Bali, Indonesia', 'assets/images/travel-spot-1.jpg','Nusa Penida is an island southeast of Indonesia\'s island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan and twelve even smaller islands. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres.'),

  ];

  int get tourLength{
    return _tourData.length;
  }

  TourData tourData(int index){
    return _tourData[index];
  }
}