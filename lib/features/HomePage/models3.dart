import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';

Widget Models3(String city) {
  return
    FutureBuilder<Map<String, dynamic>>(
        future: WeatherGet(city),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          else if (snapshot.hasError) {
            return Text('Ошибка: ${snapshot.error}', style: TextStyle(color: Colors.white),);
          }
          else {
            var weather1 = snapshot.data!["current"]['wind_degree'];
            if (weather1==360) {
              return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the north', style: TextStyle(color: Colors.white));
            }
            if (weather1==0) {
              return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the north', style: TextStyle(color: Colors.white));
            }
            if (weather1==90) {
              return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the east', style: TextStyle(color: Colors.white));
            }
            if (weather1==180) {
              return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the south', style: TextStyle(color: Colors.white));
            }
            if (weather1==270) {
              return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the west', style: TextStyle(color: Colors.white));
            }
            if (weather1<360) {
              if (weather1>270) {
                return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the northwest', style: TextStyle(color: Colors.white));
              }
            }
            if (weather1<270) {
              if (weather1>180) {
                return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the southwest', style: TextStyle(color: Colors.white));
              }
            }
            if (weather1<180) {
              if (weather1>90) {
                return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the southeast', style: TextStyle(color: Colors.white));
              }
            }
            if (weather1<90) {
              if (weather1>0) {
                return Text('${snapshot.data!["current"]['wind_kph']} km/h winds from the northeast', style: TextStyle(color: Colors.white));
              }
            }
            return Text('d');
          }
        }
    );
}