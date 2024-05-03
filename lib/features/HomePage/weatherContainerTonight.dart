import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';

List hourlyWeather = [];

Widget weatherConteinerTonight(String city){
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(1.0),
      color: Colors.black,
      child: (
        ListView.builder(
          itemCount: hourlyWeather.length,
          itemBuilder: (BuildContext context, int index) {
              return  FutureBuilder<Map<String, dynamic>>(
                  future: WeatherGet(city),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    else if (snapshot.hasError) {
                      return Text('Ошибка: ${snapshot.error}', style: TextStyle(color: Colors.white),);
                    }
                    else {
                      var weather = snapshot.data!["current"];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("${weather['temp_c']}°", style: TextStyle(color: Colors.white, fontSize: 40)),
                          Text("Feels like ${weather['feelslike_c']}°", style: TextStyle(color: Colors.white, fontSize: 25)),
                        ],
                      );
                    }
                  }
              );
          },
        )
      )
    ),
  );
}