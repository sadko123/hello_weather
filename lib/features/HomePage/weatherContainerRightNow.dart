import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';
import 'models.dart';
import 'models2.dart';
import 'models3.dart';

Widget weatherConteinerRightNow(String city){
  return Expanded(
    child: Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
              height: 170,
              color: Colors.black,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    alignment: Alignment.centerLeft,
                    child: Models2('Омск'),
                  ),
                  Container(
                    color: Colors.black,
                    alignment: Alignment.centerLeft,
                    child: Models3('Омск'),
                  ),
                  Container(
                    color: Colors.black,
                    alignment: Alignment.centerLeft,
                    child:  Row(
                      children: <Widget>[
                        Models('Омск'),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.black,
                          alignment: Alignment.centerLeft,
                          child: (
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
                                )
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          )
        ],
      ),
    ),
  );
}