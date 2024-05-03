import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';

Widget weatherConteinerThisWeek(String city){
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(1.0),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            color: Colors.black,
            alignment: Alignment.centerLeft,
            child: Text('Right now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
          Container(
              height: 200,
              color: Colors.black,
              alignment: Alignment.centerLeft,
              child: FutureBuilder<Map<String, dynamic>>(
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
                      return Text(
                        'Температура: ${weather['temp_c']}°C\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      );
                    }
                  }
              )
          )
        ],
      ),
    ),
  );
}