import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';
import 'models3.dart';

Widget weatherConteinerRightNow2(String city){
  return Expanded(
    child: Container(
      height: 500,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
              height: 250,
              color: Colors.black,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.black,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
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
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset('strelocka.png',scale: 3,),
                                          Container(
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  child: Models3('Омск'),
                                                ),
                                                Text('Visibality ${weather['avgvis_km']} kilometrs', style: TextStyle(color: Colors.white),),
                                              ],
                                            )
                                          ),
                                        ],
                                      )
                                    ),
                                    Container(
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset('water.png',scale: 3,),
                                          Text("Humidity ${weather['humidity']}% . Dewpoint ${weather['dewpoint_c']}°\n Feels", style: TextStyle(color: Colors.white, fontSize: 15)),
                                        ],
                                      ) 
                                    ),
                                    Container(
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset('water.png', scale: 3,),
                                          Text("Pressure ${weather['pressure_mb']}hPa and rising \n Fair conditions", style: TextStyle(color: Colors.white, fontSize: 15)),
                                        ],
                                      )
                                    ),
                                    Container(
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset('water.png', scale: 3,),
                                          Text("Pressure ${snapshot.data!['location']['sunrise']}hPa and rising \n Fair conditions", style: TextStyle(color: Colors.white, fontSize: 15)),
                                        ],
                                      )
                                    ),
                                    Container(
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset('water.png', scale: 3,),
                                          Text("Pressure ${snapshot.data!['location']['region']} \n Fair conditions", style: TextStyle(color: Colors.white, fontSize: 15)),
                                        ],
                                      )
                                    ),
                                  ],
                                );
                              }
                            }
                        )
                      ],
                    )
                  ),
                ],
              )
          )
        ],
      ),
    ),
  );
}