import 'package:flutter/material.dart';
import 'features/API/conect_API.dart';

Widget Models2(String city) {
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
            var weather = snapshot.data!["current"]['condition']['code'];
            switch (weather) {
              case 1000:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1003:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1006:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1009:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1030:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1063:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1066:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1069:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1072:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1087:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1114:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1117:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1135:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1147:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1150:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1153:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1168:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1171:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1180:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1183:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1186:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1189:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1192:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1195:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1198:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1201:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1204:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1207:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1210:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1213:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1216:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1219:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1222:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1225:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1237:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1240:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1243:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1246:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1249:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1252:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1255:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1258:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1261:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1264:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1273:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1276:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1279:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
              case 1282:
                return Text('${snapshot.data!["current"]['condition']['text']} for the hour.', style: TextStyle(color: Colors.white),);
            }
            return Text(weather, style: TextStyle(color: Colors.white),);
          }
        }
    );
}
